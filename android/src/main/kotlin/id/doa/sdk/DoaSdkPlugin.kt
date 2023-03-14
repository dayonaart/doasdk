package id.doa.sdk

import android.app.Activity
import android.content.Context
import androidx.annotation.NonNull
import com.google.android.recaptcha.Recaptcha
import com.google.android.recaptcha.RecaptchaAction
import com.google.android.recaptcha.RecaptchaClient
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch


/** doasdkPlugin */
class DoaSdkPlugin: FlutterPlugin, MethodCallHandler ,ActivityAware{
  private lateinit var channel : MethodChannel
  private lateinit var context: Context
  private lateinit var activity: Activity
  private lateinit var siteKey:String
  private lateinit var recaptchaClient: RecaptchaClient
  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "doasdk")
    channel.setMethodCallHandler(this)
    context = flutterPluginBinding.applicationContext
  }

  @OptIn(DelicateCoroutinesApi::class)
  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
        "getPlatformVersion" -> {
        result.success("just get")
        }
        "validationRecaptcha" -> {
          siteKey= call.arguments as String
          GlobalScope.launch {
            initializeRecaptchaClient(result)
          }
        }
        else -> {
          result.notImplemented()
        }
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  @OptIn(DelicateCoroutinesApi::class)
  private suspend fun initializeRecaptchaClient(result: Result) {
   GlobalScope.launch {
      Recaptcha.getClient(activity.application,siteKey)
        .onSuccess { client ->
          recaptchaClient = client
          executeLoginAction(result)
        }
        .onFailure { exception ->
         result.success(exception.localizedMessage)
        }
    }
  }
  @OptIn(DelicateCoroutinesApi::class)
  private fun executeLoginAction(result: Result) {
    GlobalScope.launch {
      recaptchaClient
        .execute(RecaptchaAction.LOGIN)
        .onSuccess { token ->
          result.success("Success")

        }
        .onFailure { exception ->
          result.success(exception.localizedMessage)

        }
    }
  }
  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    activity=binding.activity
  }

  override fun onDetachedFromActivityForConfigChanges() {
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
  }

  override fun onDetachedFromActivity() {
  }
}