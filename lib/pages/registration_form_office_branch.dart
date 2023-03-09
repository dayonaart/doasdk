import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newdoasdk/const_path.dart';
import 'package:newdoasdk/controller/registration_form_office_branch_controller.dart';
import 'package:newdoasdk/enum.dart';
import 'package:newdoasdk/style/colors.dart';
import 'package:newdoasdk/style/textstyle.dart';
import 'package:newdoasdk/widget/widgets.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class RegistrationFormOfficeBranch extends StatelessWidget {
  RegistrationFormOfficeBranch({super.key});
  // ignore: unused_field
  final _controller = Get.put(RegistrationFormOfficeBranchController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: "Registrasi",
                progressData: 6),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const RegistrationFormOfficeBranchHeader(),
                  RegistrationFormOfficeBranchField(),
                  const SizedBox(height: 50),
                  Container(
                      margin: const EdgeInsets.only(top: 24, bottom: 16),
                      height: 8,
                      color: GREY_BACKGROUND),
                  RecaptchaForm(),
                  const SizedBox(height: 156),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Obx(() {
                      return BUTTON(
                          radiusCircular: 999,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Lanjut",
                              style: textStyleW600(
                                  fontSize: 16, fontColor: Colors.white),
                            ),
                          ),
                          onPressed: _controller.next());
                    }),
                  ),
                  const SizedBox(height: 39),
                ],
              ),
            )));
  }
}

class RecaptchaForm extends StatelessWidget {
  final RegistrationFormOfficeBranchController _controller = Get.find();

  RecaptchaForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Klik centang di bawah untuk melanjutkan ",
              style: textStyleW500(fontSize: 14)),
          const SizedBox(height: 16),
          SizedBox(
            height: 100,
            child: WebViewPlus(
              javascriptChannels: {
                JavascriptChannel(
                    name: 'Captcha',
                    onMessageReceived: (JavascriptMessage message) {
                      _controller.validateRecaptcha(message.message);
                    })
              },
              // initialUrl: 'packages/newdoasdk/assets/index.html',
              onWebViewCreated: (controller) {
                _controller.webviewController = controller;
                _controller.webviewController.loadString('''<!DOCTYPE html>
<html>
<head>
    <title>reCAPTCHA</title>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body >
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
<form action="?" method="POST">
    <div  class="g-recaptcha"
         data-sitekey="6Lci4eckAAAAAAIsf1NUpUaSII_HvNR_Q-2zpJV9"
         data-callback="captchaCallback"></div>

</form>
<script>
      function captchaCallback(response){
        //console.log(response);
        if(typeof Captcha!=="undefined"){
          Captcha.postMessage(true);
        }else{
          Captcha.postMessage(false);
        }
      }
    </script>
</body>
</html>

<html>
<body>''');
              },
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ],
      ),
    );
  }
}

class RegistrationFormOfficeBranchField extends StatelessWidget {
  final RegistrationFormOfficeBranchController _controller = Get.find();

  RegistrationFormOfficeBranchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:
            List.generate(RegistrationFormOfficeBranchLabel.values.length, (i) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _controller.textEditingLabel(i),
                const SizedBox(height: 8),
                TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: _controller.onValidateForm(i),
                    onTap: _controller.onFieldTap(i),
                    onChanged: _controller.onChangeForm(i),
                    readOnly: i != 3,
                    controller: _controller.textEditingController(i),
                    decoration: _controller.inputDecoration(i)),
                const SizedBox(height: 16),
              ]);
        }),
      ),
    );
  }
}

class RegistrationFormOfficeBranchHeader extends StatelessWidget {
  const RegistrationFormOfficeBranchHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pemilihan Kantor Cabang BNI",
              style: textStyleW600(fontSize: 14)),
          const SizedBox(height: 8),
          Card(
            color: BLUE_LIGHT,
            elevation: 0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 13.67),
              child: Row(
                children: [
                  ImageIcon(AssetImage(iAssets), color: BLUE_TEXT),
                  const SizedBox(width: 13.67),
                  Expanded(
                      child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Anda dapat mengambil",
                        style:
                            textStyleW500(fontSize: 12, fontColor: BLUE_TEXT)),
                    TextSpan(
                        text: " kartu debit fisik dan/atau buku tabungan ",
                        style:
                            textStyleW600(fontSize: 12, fontColor: BLUE_TEXT)),
                    TextSpan(
                        text: "pada kantor cabang BNI terdekat.",
                        style:
                            textStyleW500(fontSize: 12, fontColor: BLUE_TEXT))
                  ]))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
