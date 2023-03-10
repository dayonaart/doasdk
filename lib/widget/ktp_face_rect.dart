import 'package:flutter/material.dart';

class FaceRect extends StatelessWidget {
  final double height;
  final double width;

  const FaceRect({super.key, this.height = 100, this.width = 100});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(height, (width * 1.4604651162790698).toDouble()),
      painter: FacePainter(),
    );
  }
}

class FacePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9802093, size.height * 0.3279522);
    path_0.lineTo(size.width * 0.9732326, size.height * 0.3279204);
    path_0.lineTo(size.width * 0.9732326, size.height * 0.3279841);
    path_0.lineTo(size.width * 0.9732372, size.height * 0.3280478);
    path_0.lineTo(size.width * 0.9802093, size.height * 0.3279522);
    path_0.close();
    path_0.moveTo(size.width * 0.02109340, size.height * 0.3366497);
    path_0.lineTo(size.width * 0.02807014, size.height * 0.3366433);
    path_0.lineTo(size.width * 0.02807000, size.height * 0.3365637);
    path_0.lineTo(size.width * 0.02806595, size.height * 0.3364841);
    path_0.lineTo(size.width * 0.02109340, size.height * 0.3366497);
    path_0.close();
    path_0.moveTo(size.width * 0.04163544, size.height * 0.4576815);
    path_0.lineTo(size.width * 0.04832140, size.height * 0.4563185);
    path_0.lineTo(size.width * 0.04832140, size.height * 0.4563185);
    path_0.lineTo(size.width * 0.04163544, size.height * 0.4576815);
    path_0.close();
    path_0.moveTo(size.width * 0.03261377, size.height * 0.4925892);
    path_0.lineTo(size.width * 0.02727070, size.height * 0.4895191);
    path_0.lineTo(size.width * 0.02727070, size.height * 0.4895191);
    path_0.lineTo(size.width * 0.03261377, size.height * 0.4925892);
    path_0.close();
    path_0.moveTo(size.width * 0.009952233, size.height * 0.5371847);
    path_0.lineTo(size.width * 0.002990502, size.height * 0.5375000);
    path_0.lineTo(size.width * 0.002990502, size.height * 0.5375000);
    path_0.lineTo(size.width * 0.009952233, size.height * 0.5371847);
    path_0.close();
    path_0.moveTo(size.width * 0.07093302, size.height * 0.6727707);
    path_0.lineTo(size.width * 0.07784419, size.height * 0.6721178);
    path_0.lineTo(size.width * 0.07756977, size.height * 0.6707548);
    path_0.lineTo(size.width * 0.07627628, size.height * 0.6696975);
    path_0.lineTo(size.width * 0.07093302, size.height * 0.6727707);
    path_0.close();
    path_0.moveTo(size.width * 0.5046465, size.height * 0.9928344);
    path_0.lineTo(size.width * 0.5030558, size.height * 0.9974873);
    path_0.lineTo(size.width * 0.5034698, size.height * 0.9975510);
    path_0.lineTo(size.width * 0.5038977, size.height * 0.9975828);
    path_0.lineTo(size.width * 0.5046465, size.height * 0.9928344);
    path_0.close();
    path_0.moveTo(size.width * 0.9348791, size.height * 0.6727707);
    path_0.lineTo(size.width * 0.9290140, size.height * 0.6701847);
    path_0.lineTo(size.width * 0.9284326, size.height * 0.6708025);
    path_0.lineTo(size.width * 0.9281488, size.height * 0.6715127);
    path_0.lineTo(size.width * 0.9348791, size.height * 0.6727707);
    path_0.close();
    path_0.moveTo(size.width * 0.9906558, size.height * 0.5342898);
    path_0.lineTo(size.width * 0.9976326, size.height * 0.5343631);
    path_0.lineTo(size.width * 0.9976326, size.height * 0.5343631);
    path_0.lineTo(size.width * 0.9906558, size.height * 0.5342898);
    path_0.close();
    path_0.moveTo(size.width * 0.9694837, size.height * 0.4944268);
    path_0.lineTo(size.width * 0.9640186, size.height * 0.4973949);
    path_0.lineTo(size.width * 0.9640186, size.height * 0.4973949);
    path_0.lineTo(size.width * 0.9694837, size.height * 0.4944268);
    path_0.close();
    path_0.moveTo(size.width * 0.9600930, size.height * 0.4558949);
    path_0.lineTo(size.width * 0.9533628, size.height * 0.4546338);
    path_0.lineTo(size.width * 0.9533628, size.height * 0.4546338);
    path_0.lineTo(size.width * 0.9600930, size.height * 0.4558949);
    path_0.close();
    path_0.moveTo(size.width * 0.9872000, size.height * 0.3256369);
    path_0.cubicTo(
        size.width * 0.9872000,
        size.height * 0.3213025,
        size.width * 0.9870744,
        size.height * 0.3169892,
        size.width * 0.9868186,
        size.height * 0.3126962);
    path_0.lineTo(size.width * 0.9728791, size.height * 0.3130799);
    path_0.cubicTo(
        size.width * 0.9731209,
        size.height * 0.3172452,
        size.width * 0.9732465,
        size.height * 0.3214299,
        size.width * 0.9732465,
        size.height * 0.3256369);
    path_0.lineTo(size.width * 0.9872000, size.height * 0.3256369);
    path_0.close();
    path_0.moveTo(size.width * 0.9837814, size.height * 0.2869280);
    path_0.cubicTo(
        size.width * 0.9822465,
        size.height * 0.2783188,
        size.width * 0.9802093,
        size.height * 0.2698124,
        size.width * 0.9776930,
        size.height * 0.2614226);
    path_0.lineTo(size.width * 0.9640233, size.height * 0.2633478);
    path_0.cubicTo(
        size.width * 0.9664698,
        size.height * 0.2714838,
        size.width * 0.9684419,
        size.height * 0.2797334,
        size.width * 0.9699302,
        size.height * 0.2880834);
    path_0.lineTo(size.width * 0.9837814, size.height * 0.2869280);
    path_0.close();
    path_0.moveTo(size.width * 0.9685721, size.height * 0.2363252);
    path_0.cubicTo(
        size.width * 0.9650233,
        size.height * 0.2280210,
        size.width * 0.9609907,
        size.height * 0.2198532,
        size.width * 0.9564977,
        size.height * 0.2118354);
    path_0.lineTo(size.width * 0.9434698, size.height * 0.2152583);
    path_0.cubicTo(
        size.width * 0.9478279,
        size.height * 0.2230347,
        size.width * 0.9517395,
        size.height * 0.2309564,
        size.width * 0.9551814,
        size.height * 0.2390092);
    path_0.lineTo(size.width * 0.9685721, size.height * 0.2363252);
    path_0.close();
    path_0.moveTo(size.width * 0.9415488, size.height * 0.1880946);
    path_0.cubicTo(
        size.width * 0.9360884,
        size.height * 0.1803102,
        size.width * 0.9301814,
        size.height * 0.1726946,
        size.width * 0.9238465,
        size.height * 0.1652624);
    path_0.lineTo(size.width * 0.9117953, size.height * 0.1700777);
    path_0.cubicTo(
        size.width * 0.9179395,
        size.height * 0.1772895,
        size.width * 0.9236744,
        size.height * 0.1846783,
        size.width * 0.9289674,
        size.height * 0.1922299);
    path_0.lineTo(size.width * 0.9415488, size.height * 0.1880946);
    path_0.close();
    path_0.moveTo(size.width * 0.9035395, size.height * 0.1434790);
    path_0.cubicTo(
        size.width * 0.8963488,
        size.height * 0.1364045,
        size.width * 0.8887488,
        size.height * 0.1295296,
        size.width * 0.8807674,
        size.height * 0.1228694);
    path_0.lineTo(size.width * 0.8699814, size.height * 0.1289303);
    path_0.cubicTo(
        size.width * 0.8777302,
        size.height * 0.1353965,
        size.width * 0.8851070,
        size.height * 0.1420704,
        size.width * 0.8920837,
        size.height * 0.1489369);
    path_0.lineTo(size.width * 0.9035395, size.height * 0.1434790);
    path_0.close();
    path_0.moveTo(size.width * 0.8556977, size.height * 0.1035548);
    path_0.cubicTo(
        size.width * 0.8469860,
        size.height * 0.09734968,
        size.width * 0.8379163,
        size.height * 0.09137357,
        size.width * 0.8285023,
        size.height * 0.08564076);
    path_0.lineTo(size.width * 0.8192279, size.height * 0.09277866);
    path_0.cubicTo(
        size.width * 0.8283674,
        size.height * 0.09834682,
        size.width * 0.8371814,
        size.height * 0.1041506,
        size.width * 0.8456419,
        size.height * 0.1101761);
    path_0.lineTo(size.width * 0.8556977, size.height * 0.1035548);
    path_0.close();
    path_0.moveTo(size.width * 0.7993674, size.height * 0.06923217);
    path_0.cubicTo(
        size.width * 0.7893674,
        size.height * 0.06403312,
        size.width * 0.7790558,
        size.height * 0.05908917,
        size.width * 0.7684558,
        size.height * 0.05441465);
    path_0.lineTo(size.width * 0.7609023, size.height * 0.06244713);
    path_0.cubicTo(
        size.width * 0.7712000,
        size.height * 0.06698822,
        size.width * 0.7812140,
        size.height * 0.07179076,
        size.width * 0.7909256,
        size.height * 0.07684076);
    path_0.lineTo(size.width * 0.7993674, size.height * 0.06923217);
    path_0.close();
    path_0.moveTo(size.width * 0.7359721, size.height * 0.04127484);
    path_0.cubicTo(
        size.width * 0.7249395,
        size.height * 0.03719713,
        size.width * 0.7136465,
        size.height * 0.03339713,
        size.width * 0.7021116,
        size.height * 0.02988882);
    path_0.lineTo(size.width * 0.6964512, size.height * 0.03862038);
    path_0.cubicTo(
        size.width * 0.7076558,
        size.height * 0.04202866,
        size.width * 0.7186279,
        size.height * 0.04572038,
        size.width * 0.7293442,
        size.height * 0.04968185);
    path_0.lineTo(size.width * 0.7359721, size.height * 0.04127484);
    path_0.close();
    path_0.moveTo(size.width * 0.6670605, size.height * 0.02031462);
    path_0.cubicTo(
        size.width * 0.6552698,
        size.height * 0.01744838,
        size.width * 0.6432605,
        size.height * 0.01487777,
        size.width * 0.6310651,
        size.height * 0.01261631);
    path_0.lineTo(size.width * 0.6274186, size.height * 0.02183834);
    path_0.cubicTo(
        size.width * 0.6392698,
        size.height * 0.02403576,
        size.width * 0.6509349,
        size.height * 0.02653347,
        size.width * 0.6623907,
        size.height * 0.02931831);
    path_0.lineTo(size.width * 0.6670605, size.height * 0.02031462);
    path_0.close();
    path_0.moveTo(size.width * 0.5942977, size.height * 0.006822197);
    path_0.cubicTo(
        size.width * 0.5820233,
        size.height * 0.005223217,
        size.width * 0.5695907,
        size.height * 0.003932102,
        size.width * 0.5570093,
        size.height * 0.002961293);
    path_0.lineTo(size.width * 0.5554465, size.height * 0.01245535);
    path_0.cubicTo(
        size.width * 0.5676744,
        size.height * 0.01339904,
        size.width * 0.5797628,
        size.height * 0.01465398,
        size.width * 0.5916884,
        size.height * 0.01620793);
    path_0.lineTo(size.width * 0.5942977, size.height * 0.006822197);
    path_0.close();
    path_0.moveTo(size.width * 0.5194000, size.height * 0.001036210);
    path_0.cubicTo(
        size.width * 0.5131349,
        size.height * 0.0008766656,
        size.width * 0.5068419,
        size.height * 0.0007961783,
        size.width * 0.5005209,
        size.height * 0.0007961783);
    path_0.lineTo(size.width * 0.5005209, size.height * 0.01035032);
    path_0.cubicTo(
        size.width * 0.5066698,
        size.height * 0.01035032,
        size.width * 0.5127907,
        size.height * 0.01042860,
        size.width * 0.5188837,
        size.height * 0.01058376);
    path_0.lineTo(size.width * 0.5194000, size.height * 0.001036210);
    path_0.close();
    path_0.moveTo(size.width * 0.5005209, size.height * 0.0007961783);
    path_0.cubicTo(
        size.width * 0.4941953,
        size.height * 0.0007961783,
        size.width * 0.4879023,
        size.height * 0.0008766688,
        size.width * 0.4816372,
        size.height * 0.001036210);
    path_0.lineTo(size.width * 0.4821581, size.height * 0.01058376);
    path_0.cubicTo(
        size.width * 0.4882465,
        size.height * 0.01042860,
        size.width * 0.4943674,
        size.height * 0.01035032,
        size.width * 0.5005209,
        size.height * 0.01035032);
    path_0.lineTo(size.width * 0.5005209, size.height * 0.0007961783);
    path_0.close();
    path_0.moveTo(size.width * 0.4440298, size.height * 0.002961296);
    path_0.cubicTo(
        size.width * 0.4314484,
        size.height * 0.003932102,
        size.width * 0.4190126,
        size.height * 0.005223217,
        size.width * 0.4067405,
        size.height * 0.006822197);
    path_0.lineTo(size.width * 0.4093493, size.height * 0.01620793);
    path_0.cubicTo(
        size.width * 0.4212753,
        size.height * 0.01465398,
        size.width * 0.4333623,
        size.height * 0.01339904,
        size.width * 0.4455926,
        size.height * 0.01245535);
    path_0.lineTo(size.width * 0.4440298, size.height * 0.002961296);
    path_0.close();
    path_0.moveTo(size.width * 0.3699726, size.height * 0.01261627);
    path_0.cubicTo(
        size.width * 0.3577753,
        size.height * 0.01487777,
        size.width * 0.3457702,
        size.height * 0.01744834,
        size.width * 0.3339777,
        size.height * 0.02031462);
    path_0.lineTo(size.width * 0.3386456, size.height * 0.02931831);
    path_0.cubicTo(
        size.width * 0.3501028,
        size.height * 0.02653344,
        size.width * 0.3617674,
        size.height * 0.02403576,
        size.width * 0.3736195,
        size.height * 0.02183831);
    path_0.lineTo(size.width * 0.3699726, size.height * 0.01261627);
    path_0.close();
    path_0.moveTo(size.width * 0.2989242, size.height * 0.02988885);
    path_0.cubicTo(
        size.width * 0.2873898,
        size.height * 0.03339713,
        size.width * 0.2760967,
        size.height * 0.03719713,
        size.width * 0.2650656,
        size.height * 0.04127484);
    path_0.lineTo(size.width * 0.2716944, size.height * 0.04968185);
    path_0.cubicTo(
        size.width * 0.2824112,
        size.height * 0.04572038,
        size.width * 0.2933828,
        size.height * 0.04202866,
        size.width * 0.3045888,
        size.height * 0.03862038);
    path_0.lineTo(size.width * 0.2989242, size.height * 0.02988885);
    path_0.close();
    path_0.moveTo(size.width * 0.2325809, size.height * 0.05441465);
    path_0.cubicTo(
        size.width * 0.2219809,
        size.height * 0.05908917,
        size.width * 0.2116707,
        size.height * 0.06403312,
        size.width * 0.2016721,
        size.height * 0.06923217);
    path_0.lineTo(size.width * 0.2101112, size.height * 0.07684076);
    path_0.cubicTo(
        size.width * 0.2198233,
        size.height * 0.07179076,
        size.width * 0.2298386,
        size.height * 0.06698822,
        size.width * 0.2401363,
        size.height * 0.06244713);
    path_0.lineTo(size.width * 0.2325809, size.height * 0.05441465);
    path_0.close();
    path_0.moveTo(size.width * 0.1725335, size.height * 0.08564076);
    path_0.cubicTo(
        size.width * 0.1631228,
        size.height * 0.09137357,
        size.width * 0.1540502,
        size.height * 0.09734968,
        size.width * 0.1453381,
        size.height * 0.1035548);
    path_0.lineTo(size.width * 0.1553972, size.height * 0.1101761);
    path_0.cubicTo(
        size.width * 0.1638572,
        size.height * 0.1041506,
        size.width * 0.1726684,
        size.height * 0.09834682,
        size.width * 0.1818084,
        size.height * 0.09277866);
    path_0.lineTo(size.width * 0.1725335, size.height * 0.08564076);
    path_0.close();
    path_0.moveTo(size.width * 0.1202712, size.height * 0.1228694);
    path_0.cubicTo(
        size.width * 0.1122888,
        size.height * 0.1295296,
        size.width * 0.1046907,
        size.height * 0.1364045,
        size.width * 0.09749953,
        size.height * 0.1434790);
    path_0.lineTo(size.width * 0.1089521, size.height * 0.1489369);
    path_0.cubicTo(
        size.width * 0.1159321,
        size.height * 0.1420704,
        size.width * 0.1233079,
        size.height * 0.1353965,
        size.width * 0.1310577,
        size.height * 0.1289303);
    path_0.lineTo(size.width * 0.1202712, size.height * 0.1228694);
    path_0.close();
    path_0.moveTo(size.width * 0.07718977, size.height * 0.1652627);
    path_0.cubicTo(
        size.width * 0.07085628,
        size.height * 0.1726946,
        size.width * 0.06494930,
        size.height * 0.1803105,
        size.width * 0.05949070,
        size.height * 0.1880946);
    path_0.lineTo(size.width * 0.07206977, size.height * 0.1922299);
    path_0.cubicTo(
        size.width * 0.07736465,
        size.height * 0.1846783,
        size.width * 0.08309581,
        size.height * 0.1772895,
        size.width * 0.08924186,
        size.height * 0.1700777);
    path_0.lineTo(size.width * 0.07718977, size.height * 0.1652627);
    path_0.close();
    path_0.moveTo(size.width * 0.04454167, size.height * 0.2118354);
    path_0.cubicTo(
        size.width * 0.04004819,
        size.height * 0.2198532,
        size.width * 0.03601563,
        size.height * 0.2280210,
        size.width * 0.03246553,
        size.height * 0.2363252);
    path_0.lineTo(size.width * 0.04585707, size.height * 0.2390092);
    path_0.cubicTo(
        size.width * 0.04930000,
        size.height * 0.2309564,
        size.width * 0.05321070,
        size.height * 0.2230347,
        size.width * 0.05756884,
        size.height * 0.2152586);
    path_0.lineTo(size.width * 0.04454167, size.height * 0.2118354);
    path_0.close();
    path_0.moveTo(size.width * 0.02334688, size.height * 0.2614226);
    path_0.cubicTo(
        size.width * 0.02082633,
        size.height * 0.2698127,
        size.width * 0.01879005,
        size.height * 0.2783191,
        size.width * 0.01725828,
        size.height * 0.2869280);
    path_0.lineTo(size.width * 0.03110935, size.height * 0.2880834);
    path_0.cubicTo(
        size.width * 0.03259502,
        size.height * 0.2797334,
        size.width * 0.03456986,
        size.height * 0.2714841,
        size.width * 0.03701419,
        size.height * 0.2633478);
    path_0.lineTo(size.width * 0.02334688, size.height * 0.2614226);
    path_0.close();
    path_0.moveTo(size.width * 0.01421730, size.height * 0.3126965);
    path_0.cubicTo(
        size.width * 0.01396526,
        size.height * 0.3169892,
        size.width * 0.01383809,
        size.height * 0.3213025,
        size.width * 0.01383809,
        size.height * 0.3256369);
    path_0.lineTo(size.width * 0.02779158, size.height * 0.3256369);
    path_0.cubicTo(
        size.width * 0.02779158,
        size.height * 0.3214299,
        size.width * 0.02791498,
        size.height * 0.3172452,
        size.width * 0.02815953,
        size.height * 0.3130803);
    path_0.lineTo(size.width * 0.01421730, size.height * 0.3126965);
    path_0.close();
    path_0.moveTo(size.width * 0.01383809, size.height * 0.3256369);
    path_0.cubicTo(
        size.width * 0.01383809,
        size.height * 0.3265701,
        size.width * 0.01384400,
        size.height * 0.3275000,
        size.width * 0.01385572,
        size.height * 0.3284331);
    path_0.lineTo(size.width * 0.02780870, size.height * 0.3283503);
    path_0.cubicTo(
        size.width * 0.02779730,
        size.height * 0.3274459,
        size.width * 0.02779158,
        size.height * 0.3265414,
        size.width * 0.02779158,
        size.height * 0.3256369);
    path_0.lineTo(size.width * 0.01383809, size.height * 0.3256369);
    path_0.close();
    path_0.moveTo(size.width * 0.01399707, size.height * 0.3340191);
    path_0.cubicTo(
        size.width * 0.01403247,
        size.height * 0.3349522,
        size.width * 0.01407372,
        size.height * 0.3358822,
        size.width * 0.01412084,
        size.height * 0.3368153);
    path_0.lineTo(size.width * 0.02806595, size.height * 0.3364841);
    path_0.cubicTo(
        size.width * 0.02802023,
        size.height * 0.3355796,
        size.width * 0.02798019,
        size.height * 0.3346752,
        size.width * 0.02794581,
        size.height * 0.3337707);
    path_0.lineTo(size.width * 0.01399707, size.height * 0.3340191);
    path_0.close();
    path_0.moveTo(size.width * 0.01411665, size.height * 0.3366529);
    path_0.cubicTo(
        size.width * 0.01412265,
        size.height * 0.3400701,
        size.width * 0.01416074,
        size.height * 0.3453662,
        size.width * 0.01439623,
        size.height * 0.3520191);
    path_0.lineTo(size.width * 0.02834563, size.height * 0.3517898);
    path_0.cubicTo(
        size.width * 0.02811363,
        size.height * 0.3452357,
        size.width * 0.02807605,
        size.height * 0.3400159,
        size.width * 0.02807014,
        size.height * 0.3366433);
    path_0.lineTo(size.width * 0.01411665, size.height * 0.3366529);
    path_0.close();
    path_0.moveTo(size.width * 0.01657726, size.height * 0.3827930);
    path_0.cubicTo(
        size.width * 0.01761912,
        size.height * 0.3924395,
        size.width * 0.01910321,
        size.height * 0.4028631,
        size.width * 0.02121870,
        size.height * 0.4134809);
    path_0.lineTo(size.width * 0.03504409, size.height * 0.4121879);
    path_0.cubicTo(
        size.width * 0.03297470,
        size.height * 0.4018025,
        size.width * 0.03151777,
        size.height * 0.3915796,
        size.width * 0.03049274,
        size.height * 0.3820892);
    path_0.lineTo(size.width * 0.01657726, size.height * 0.3827930);
    path_0.close();
    path_0.moveTo(size.width * 0.02918907, size.height * 0.4439745);
    path_0.cubicTo(
        size.width * 0.03090251,
        size.height * 0.4490987,
        size.width * 0.03281465,
        size.height * 0.4541465,
        size.width * 0.03494963,
        size.height * 0.4590478);
    path_0.lineTo(size.width * 0.04832140, size.height * 0.4563185);
    path_0.cubicTo(
        size.width * 0.04628293,
        size.height * 0.4516369,
        size.width * 0.04444572,
        size.height * 0.4467898,
        size.width * 0.04279056,
        size.height * 0.4418408);
    path_0.lineTo(size.width * 0.02918907, size.height * 0.4439745);
    path_0.close();
    path_0.moveTo(size.width * 0.03494963, size.height * 0.4590478);
    path_0.cubicTo(
        size.width * 0.03609967,
        size.height * 0.4616879,
        size.width * 0.03682772,
        size.height * 0.4643949,
        size.width * 0.03711674,
        size.height * 0.4670924);
    path_0.lineTo(size.width * 0.05103302, size.height * 0.4663949);
    path_0.cubicTo(
        size.width * 0.05066884,
        size.height * 0.4629968,
        size.width * 0.04975488,
        size.height * 0.4596115,
        size.width * 0.04832140,
        size.height * 0.4563185);
    path_0.lineTo(size.width * 0.03494963, size.height * 0.4590478);
    path_0.close();
    path_0.moveTo(size.width * 0.03334419, size.height * 0.4828408);
    path_0.cubicTo(
        size.width * 0.03179391,
        size.height * 0.4852293,
        size.width * 0.02977544,
        size.height * 0.4874745,
        size.width * 0.02727070,
        size.height * 0.4895191);
    path_0.lineTo(size.width * 0.03795679, size.height * 0.4956624);
    path_0.cubicTo(
        size.width * 0.04133256,
        size.height * 0.4929076,
        size.width * 0.04403540,
        size.height * 0.4898949,
        size.width * 0.04609614,
        size.height * 0.4867197);
    path_0.lineTo(size.width * 0.03334419, size.height * 0.4828408);
    path_0.close();
    path_0.moveTo(size.width * 0.02727070, size.height * 0.4895191);
    path_0.cubicTo(
        size.width * 0.02321405,
        size.height * 0.4928248,
        size.width * 0.01957414,
        size.height * 0.4963535,
        size.width * 0.01641847,
        size.height * 0.5000573);
    path_0.lineTo(size.width * 0.02847191, size.height * 0.5048726);
    path_0.cubicTo(
        size.width * 0.03121758,
        size.height * 0.5016497,
        size.width * 0.03439707,
        size.height * 0.4985637,
        size.width * 0.03795679,
        size.height * 0.4956624);
    path_0.lineTo(size.width * 0.02727070, size.height * 0.4895191);
    path_0.close();
    path_0.moveTo(size.width * 0.003766437, size.height * 0.5244268);
    path_0.cubicTo(
        size.width * 0.002849298,
        size.height * 0.5287102,
        size.width * 0.002567019,
        size.height * 0.5330828,
        size.width * 0.002990502,
        size.height * 0.5375000);
    path_0.lineTo(size.width * 0.01691400, size.height * 0.5368726);
    path_0.cubicTo(
        size.width * 0.01655679,
        size.height * 0.5331497,
        size.width * 0.01679367,
        size.height * 0.5294522,
        size.width * 0.01757233,
        size.height * 0.5258153);
    path_0.lineTo(size.width * 0.003766437, size.height * 0.5244268);
    path_0.close();
    path_0.moveTo(size.width * 0.002990502, size.height * 0.5375000);
    path_0.cubicTo(
        size.width * 0.003362130,
        size.height * 0.5413726,
        size.width * 0.003834321,
        size.height * 0.5454172,
        size.width * 0.004419260,
        size.height * 0.5495987);
    path_0.lineTo(size.width * 0.01830907, size.height * 0.5486847);
    path_0.cubicTo(
        size.width * 0.01773767,
        size.height * 0.5446051,
        size.width * 0.01727660,
        size.height * 0.5406529,
        size.width * 0.01691400,
        size.height * 0.5368726);
    path_0.lineTo(size.width * 0.002990502, size.height * 0.5375000);
    path_0.close();
    path_0.moveTo(size.width * 0.008844326, size.height * 0.5736752);
    path_0.cubicTo(
        size.width * 0.01063437,
        size.height * 0.5815000,
        size.width * 0.01282753,
        size.height * 0.5895255,
        size.width * 0.01548823,
        size.height * 0.5975573);
    path_0.lineTo(size.width * 0.02909623, size.height * 0.5954459);
    path_0.cubicTo(
        size.width * 0.02651223,
        size.height * 0.5876433,
        size.width * 0.02437637,
        size.height * 0.5798312,
        size.width * 0.02262967,
        size.height * 0.5721943);
    path_0.lineTo(size.width * 0.008844326, size.height * 0.5736752);
    path_0.close();
    path_0.moveTo(size.width * 0.02475879, size.height * 0.6211083);
    path_0.cubicTo(
        size.width * 0.02840786,
        size.height * 0.6289841,
        size.width * 0.03259893,
        size.height * 0.6366975,
        size.width * 0.03740270,
        size.height * 0.6440510);
    path_0.lineTo(size.width * 0.05013953, size.height * 0.6401497);
    path_0.cubicTo(
        size.width * 0.04558284,
        size.height * 0.6331752,
        size.width * 0.04157358,
        size.height * 0.6258057,
        size.width * 0.03805916,
        size.height * 0.6182197);
    path_0.lineTo(size.width * 0.02475879, size.height * 0.6211083);
    path_0.close();
    path_0.moveTo(size.width * 0.05466465, size.height * 0.6657994);
    path_0.cubicTo(
        size.width * 0.05808186,
        size.height * 0.6693248,
        size.width * 0.06171907,
        size.height * 0.6726847,
        size.width * 0.06559023,
        size.height * 0.6758439);
    path_0.lineTo(size.width * 0.07627628, size.height * 0.6696975);
    path_0.cubicTo(
        size.width * 0.07277209,
        size.height * 0.6668408,
        size.width * 0.06944651,
        size.height * 0.6637707,
        size.width * 0.06629209,
        size.height * 0.6605159);
    path_0.lineTo(size.width * 0.05466465, size.height * 0.6657994);
    path_0.close();
    path_0.moveTo(size.width * 0.06402186, size.height * 0.6734236);
    path_0.cubicTo(
        size.width * 0.06486140,
        size.height * 0.6775892,
        size.width * 0.06587442,
        size.height * 0.6818854,
        size.width * 0.06706605,
        size.height * 0.6862898);
    path_0.lineTo(size.width * 0.08078651, size.height * 0.6845510);
    path_0.cubicTo(
        size.width * 0.07963209,
        size.height * 0.6802834,
        size.width * 0.07865349,
        size.height * 0.6761338,
        size.width * 0.07784419,
        size.height * 0.6721178);
    path_0.lineTo(size.width * 0.06402186, size.height * 0.6734236);
    path_0.close();
    path_0.moveTo(size.width * 0.07552279, size.height * 0.7117580);
    path_0.cubicTo(
        size.width * 0.07868744,
        size.height * 0.7198471,
        size.width * 0.08239209,
        size.height * 0.7281847,
        size.width * 0.08666186,
        size.height * 0.7367070);
    path_0.lineTo(size.width * 0.09986047, size.height * 0.7336051);
    path_0.cubicTo(
        size.width * 0.09569256,
        size.height * 0.7252898,
        size.width * 0.09208186,
        size.height * 0.7171592,
        size.width * 0.08900093,
        size.height * 0.7092866);
    path_0.lineTo(size.width * 0.07552279, size.height * 0.7117580);
    path_0.close();
    path_0.moveTo(size.width * 0.1001474, size.height * 0.7610350);
    path_0.cubicTo(
        size.width * 0.1049042,
        size.height * 0.7688599,
        size.width * 0.1101284,
        size.height * 0.7767771,
        size.width * 0.1158377,
        size.height * 0.7847420);
    path_0.lineTo(size.width * 0.1283633, size.height * 0.7805318);
    path_0.cubicTo(
        size.width * 0.1227823,
        size.height * 0.7727484,
        size.width * 0.1176772,
        size.height * 0.7650096,
        size.width * 0.1130293,
        size.height * 0.7573631);
    path_0.lineTo(size.width * 0.1001474, size.height * 0.7610350);
    path_0.close();
    path_0.moveTo(size.width * 0.1336326, size.height * 0.8077484);
    path_0.cubicTo(
        size.width * 0.1398009,
        size.height * 0.8151624,
        size.width * 0.1464014,
        size.height * 0.8225732,
        size.width * 0.1534488,
        size.height * 0.8299459);
    path_0.lineTo(size.width * 0.1651233, size.height * 0.8247134);
    path_0.cubicTo(
        size.width * 0.1582367,
        size.height * 0.8175096,
        size.width * 0.1517860,
        size.height * 0.8102643,
        size.width * 0.1457572,
        size.height * 0.8030191);
    path_0.lineTo(size.width * 0.1336326, size.height * 0.8077484);
    path_0.close();
    path_0.moveTo(size.width * 0.1752465, size.height * 0.8512548);
    path_0.cubicTo(
        size.width * 0.1827447,
        size.height * 0.8581146,
        size.width * 0.1906558,
        size.height * 0.8649045,
        size.width * 0.1989921,
        size.height * 0.8715892);
    path_0.lineTo(size.width * 0.2096033, size.height * 0.8653854);
    path_0.cubicTo(
        size.width * 0.2014656,
        size.height * 0.8588599,
        size.width * 0.1937409,
        size.height * 0.8522325,
        size.width * 0.1864177,
        size.height * 0.8455318);
    path_0.lineTo(size.width * 0.1752465, size.height * 0.8512548);
    path_0.close();
    path_0.moveTo(size.width * 0.2246386, size.height * 0.8908408);
    path_0.cubicTo(
        size.width * 0.2333851,
        size.height * 0.8969841,
        size.width * 0.2425293,
        size.height * 0.9030064,
        size.width * 0.2520814,
        size.height * 0.9088726);
    path_0.lineTo(size.width * 0.2613991, size.height * 0.9017611);
    path_0.cubicTo(
        size.width * 0.2520842,
        size.height * 0.8960414,
        size.width * 0.2431651,
        size.height * 0.8901688,
        size.width * 0.2346312,
        size.height * 0.8841720);
    path_0.lineTo(size.width * 0.2246386, size.height * 0.8908408);
    path_0.close();
    path_0.moveTo(size.width * 0.2812409, size.height * 0.9255955);
    path_0.cubicTo(
        size.width * 0.2911288,
        size.height * 0.9308822,
        size.width * 0.3013972,
        size.height * 0.9360032,
        size.width * 0.3120553,
        size.height * 0.9409331);
    path_0.lineTo(size.width * 0.3198665, size.height * 0.9330159);
    path_0.cubicTo(
        size.width * 0.3094777,
        size.height * 0.9282102,
        size.width * 0.2994684,
        size.height * 0.9232197,
        size.width * 0.2898293,
        size.height * 0.9180637);
    path_0.lineTo(size.width * 0.2812409, size.height * 0.9255955);
    path_0.close();
    path_0.moveTo(size.width * 0.3442637, size.height * 0.9547484);
    path_0.cubicTo(
        size.width * 0.3551009,
        size.height * 0.9590510,
        size.width * 0.3662958,
        size.height * 0.9631561,
        size.width * 0.3778563,
        size.height * 0.9670446);
    path_0.lineTo(size.width * 0.3840102, size.height * 0.9584713);
    path_0.cubicTo(
        size.width * 0.3727381,
        size.height * 0.9546783,
        size.width * 0.3618242,
        size.height * 0.9506752,
        size.width * 0.3512605,
        size.height * 0.9464841);
    path_0.lineTo(size.width * 0.3442637, size.height * 0.9547484);
    path_0.close();
    path_0.moveTo(size.width * 0.4125014, size.height * 0.9777261);
    path_0.cubicTo(
        size.width * 0.4240679,
        size.height * 0.9809777,
        size.width * 0.4359647,
        size.height * 0.9840159,
        size.width * 0.4481977,
        size.height * 0.9868280);
    path_0.lineTo(size.width * 0.4526386, size.height * 0.9777707);
    path_0.cubicTo(
        size.width * 0.4406949,
        size.height * 0.9750255,
        size.width * 0.4290847,
        size.height * 0.9720573,
        size.width * 0.4178000,
        size.height * 0.9688854);
    path_0.lineTo(size.width * 0.4125014, size.height * 0.9777261);
    path_0.close();
    path_0.moveTo(size.width * 0.4845442, size.height * 0.9943121);
    path_0.cubicTo(
        size.width * 0.4906372,
        size.height * 0.9954268,
        size.width * 0.4968093,
        size.height * 0.9964841,
        size.width * 0.5030558,
        size.height * 0.9974873);
    path_0.lineTo(size.width * 0.5062372, size.height * 0.9881815);
    path_0.cubicTo(
        size.width * 0.5001302,
        size.height * 0.9872038,
        size.width * 0.4940977,
        size.height * 0.9861688,
        size.width * 0.4881395,
        size.height * 0.9850796);
    path_0.lineTo(size.width * 0.4845442, size.height * 0.9943121);
    path_0.close();
    path_0.moveTo(size.width * 0.5038977, size.height * 0.9975828);
    path_0.cubicTo(
        size.width * 0.5099163,
        size.height * 0.9980287,
        size.width * 0.5165488,
        size.height * 0.9981943,
        size.width * 0.5237070,
        size.height * 0.9980382);
    path_0.lineTo(size.width * 0.5232698, size.height * 0.9884904);
    path_0.cubicTo(
        size.width * 0.5166791,
        size.height * 0.9886306,
        size.width * 0.5106977,
        size.height * 0.9884777,
        size.width * 0.5053953,
        size.height * 0.9880860);
    path_0.lineTo(size.width * 0.5038977, size.height * 0.9975828);
    path_0.close();
    path_0.moveTo(size.width * 0.5623535, size.height * 0.9946433);
    path_0.cubicTo(
        size.width * 0.5740419,
        size.height * 0.9929236,
        size.width * 0.5865070,
        size.height * 0.9905096,
        size.width * 0.5995581,
        size.height * 0.9873025);
    path_0.lineTo(size.width * 0.5948419, size.height * 0.9783089);
    path_0.cubicTo(
        size.width * 0.5823581,
        size.height * 0.9813790,
        size.width * 0.5704837,
        size.height * 0.9836720,
        size.width * 0.5594186,
        size.height * 0.9853025);
    path_0.lineTo(size.width * 0.5623535, size.height * 0.9946433);
    path_0.close();
    path_0.moveTo(size.width * 0.6350698, size.height * 0.9769682);
    path_0.cubicTo(
        size.width * 0.6460698,
        size.height * 0.9732707,
        size.width * 0.6573302,
        size.height * 0.9690191,
        size.width * 0.6687674,
        size.height * 0.9641592);
    path_0.lineTo(size.width * 0.6614093, size.height * 0.9560414);
    path_0.cubicTo(
        size.width * 0.6503628,
        size.height * 0.9607357,
        size.width * 0.6395023,
        size.height * 0.9648344,
        size.width * 0.6289209,
        size.height * 0.9683917);
    path_0.lineTo(size.width * 0.6350698, size.height * 0.9769682);
    path_0.close();
    path_0.moveTo(size.width * 0.7004465, size.height * 0.9492898);
    path_0.cubicTo(
        size.width * 0.7102930,
        size.height * 0.9442197,
        size.width * 0.7202000,
        size.height * 0.9386815,
        size.width * 0.7301116,
        size.height * 0.9326465);
    path_0.lineTo(size.width * 0.7208419, size.height * 0.9255064);
    path_0.cubicTo(
        size.width * 0.7112093,
        size.height * 0.9313694,
        size.width * 0.7015953,
        size.height * 0.9367420,
        size.width * 0.6920605,
        size.height * 0.9416561);
    path_0.lineTo(size.width * 0.7004465, size.height * 0.9492898);
    path_0.close();
    path_0.moveTo(size.width * 0.7577116, size.height * 0.9145127);
    path_0.cubicTo(
        size.width * 0.7663116,
        size.height * 0.9084331,
        size.width * 0.7748698,
        size.height * 0.9019522,
        size.width * 0.7833628,
        size.height * 0.8950541);
    path_0.lineTo(size.width * 0.7726930, size.height * 0.8888981);
    path_0.cubicTo(
        size.width * 0.7644047,
        size.height * 0.8956306,
        size.width * 0.7560605,
        size.height * 0.9019459,
        size.width * 0.7476884,
        size.height * 0.9078694);
    path_0.lineTo(size.width * 0.7577116, size.height * 0.9145127);
    path_0.close();
    path_0.moveTo(size.width * 0.8070651, size.height * 0.8744841);
    path_0.cubicTo(
        size.width * 0.8144186,
        size.height * 0.8676752,
        size.width * 0.8216930,
        size.height * 0.8605255,
        size.width * 0.8288558,
        size.height * 0.8530191);
    path_0.lineTo(size.width * 0.8171721, size.height * 0.8477930);
    path_0.cubicTo(
        size.width * 0.8101535,
        size.height * 0.8551465,
        size.width * 0.8030372,
        size.height * 0.8621465,
        size.width * 0.7958465,
        size.height * 0.8688025);
    path_0.lineTo(size.width * 0.8070651, size.height * 0.8744841);
    path_0.close();
    path_0.moveTo(size.width * 0.8488465, size.height * 0.8307739);
    path_0.cubicTo(
        size.width * 0.8550698,
        size.height * 0.8234172,
        size.width * 0.8611907,
        size.height * 0.8157643,
        size.width * 0.8671907,
        size.height * 0.8078025);
    path_0.lineTo(size.width * 0.8547860, size.height * 0.8034236);
    path_0.cubicTo(
        size.width * 0.8488930,
        size.height * 0.8112484,
        size.width * 0.8428837,
        size.height * 0.8187643,
        size.width * 0.8367721,
        size.height * 0.8259841);
    path_0.lineTo(size.width * 0.8488465, size.height * 0.8307739);
    path_0.close();
    path_0.moveTo(size.width * 0.8838651, size.height * 0.7843567);
    path_0.cubicTo(
        size.width * 0.8890326,
        size.height * 0.7766592,
        size.width * 0.8940884,
        size.height * 0.7687006,
        size.width * 0.8990186,
        size.height * 0.7604777);
    path_0.lineTo(size.width * 0.8861070, size.height * 0.7568503);
    path_0.cubicTo(
        size.width * 0.8812512,
        size.height * 0.7649522,
        size.width * 0.8762744,
        size.height * 0.7727898,
        size.width * 0.8711860,
        size.height * 0.7803662);
    path_0.lineTo(size.width * 0.8838651, size.height * 0.7843567);
    path_0.close();
    path_0.moveTo(size.width * 0.9127721, size.height * 0.7361911);
    path_0.cubicTo(
        size.width * 0.9170372,
        size.height * 0.7282134,
        size.width * 0.9211860,
        size.height * 0.7200096,
        size.width * 0.9252047,
        size.height * 0.7115732);
    path_0.lineTo(size.width * 0.9119395, size.height * 0.7086115);
    path_0.cubicTo(
        size.width * 0.9079674,
        size.height * 0.7169395,
        size.width * 0.9038744,
        size.height * 0.7250382,
        size.width * 0.8996698,
        size.height * 0.7329045);
    path_0.lineTo(size.width * 0.9127721, size.height * 0.7361911);
    path_0.close();
    path_0.moveTo(size.width * 0.9364000, size.height * 0.6866911);
    path_0.cubicTo(
        size.width * 0.9381628,
        size.height * 0.6825223,
        size.width * 0.9399023,
        size.height * 0.6783025,
        size.width * 0.9416093,
        size.height * 0.6740318);
    path_0.lineTo(size.width * 0.9281488, size.height * 0.6715127);
    path_0.cubicTo(
        size.width * 0.9264605,
        size.height * 0.6757357,
        size.width * 0.9247442,
        size.height * 0.6799076,
        size.width * 0.9230000,
        size.height * 0.6840287);
    path_0.lineTo(size.width * 0.9364000, size.height * 0.6866911);
    path_0.close();
    path_0.moveTo(size.width * 0.9407442, size.height * 0.6753599);
    path_0.cubicTo(
        size.width * 0.9435535,
        size.height * 0.6723694,
        size.width * 0.9466465,
        size.height * 0.6687484,
        size.width * 0.9498884,
        size.height * 0.6645637);
    path_0.lineTo(size.width * 0.9375628, size.height * 0.6600860);
    path_0.cubicTo(
        size.width * 0.9344744,
        size.height * 0.6640732,
        size.width * 0.9315767,
        size.height * 0.6674586,
        size.width * 0.9290140,
        size.height * 0.6701847);
    path_0.lineTo(size.width * 0.9407442, size.height * 0.6753599);
    path_0.close();
    path_0.moveTo(size.width * 0.9650558, size.height * 0.6421592);
    path_0.cubicTo(
        size.width * 0.9692279,
        size.height * 0.6351433,
        size.width * 0.9733535,
        size.height * 0.6273949,
        size.width * 0.9772000,
        size.height * 0.6190287);
    path_0.lineTo(size.width * 0.9638884, size.height * 0.6161624);
    path_0.cubicTo(
        size.width * 0.9601628,
        size.height * 0.6242707,
        size.width * 0.9561628,
        size.height * 0.6317739,
        size.width * 0.9521302,
        size.height * 0.6385573);
    path_0.lineTo(size.width * 0.9650558, size.height * 0.6421592);
    path_0.close();
    path_0.moveTo(size.width * 0.9866186, size.height * 0.5953121);
    path_0.cubicTo(
        size.width * 0.9892093,
        size.height * 0.5875955,
        size.width * 0.9914698,
        size.height * 0.5795191,
        size.width * 0.9932558,
        size.height * 0.5711497);
    path_0.lineTo(size.width * 0.9794512, size.height * 0.5697675);
    path_0.cubicTo(
        size.width * 0.9777163,
        size.height * 0.5778694,
        size.width * 0.9755302,
        size.height * 0.5856911,
        size.width * 0.9730186,
        size.height * 0.5931688);
    path_0.lineTo(size.width * 0.9866186, size.height * 0.5953121);
    path_0.close();
    path_0.moveTo(size.width * 0.9969535, size.height * 0.5466720);
    path_0.cubicTo(
        size.width * 0.9973070,
        size.height * 0.5426178,
        size.width * 0.9975395,
        size.height * 0.5385127,
        size.width * 0.9976326,
        size.height * 0.5343631);
    path_0.lineTo(size.width * 0.9836837, size.height * 0.5342166);
    path_0.cubicTo(
        size.width * 0.9835907,
        size.height * 0.5382197,
        size.width * 0.9833674,
        size.height * 0.5421815,
        size.width * 0.9830233,
        size.height * 0.5460987);
    path_0.lineTo(size.width * 0.9969535, size.height * 0.5466720);
    path_0.close();
    path_0.moveTo(size.width * 0.9976326, size.height * 0.5343631);
    path_0.cubicTo(
        size.width * 0.9977209,
        size.height * 0.5304045,
        size.width * 0.9972279,
        size.height * 0.5264968,
        size.width * 0.9962140,
        size.height * 0.5226752);
    path_0.lineTo(size.width * 0.9824837, size.height * 0.5243822);
    path_0.cubicTo(
        size.width * 0.9833395,
        size.height * 0.5276146,
        size.width * 0.9837581,
        size.height * 0.5309013,
        size.width * 0.9836837,
        size.height * 0.5342166);
    path_0.lineTo(size.width * 0.9976326, size.height * 0.5343631);
    path_0.close();
    path_0.moveTo(size.width * 0.9844093, size.height * 0.5009777);
    path_0.cubicTo(
        size.width * 0.9816140,
        size.height * 0.4976529,
        size.width * 0.9784372,
        size.height * 0.4944713,
        size.width * 0.9749488,
        size.height * 0.4914586);
    path_0.lineTo(size.width * 0.9640186, size.height * 0.4973949);
    path_0.cubicTo(
        size.width * 0.9670930,
        size.height * 0.5000510,
        size.width * 0.9698744,
        size.height * 0.5028439,
        size.width * 0.9723163,
        size.height * 0.5057452);
    path_0.lineTo(size.width * 0.9844093, size.height * 0.5009777);
    path_0.close();
    path_0.moveTo(size.width * 0.9749488, size.height * 0.4914586);
    path_0.cubicTo(
        size.width * 0.9722744,
        size.height * 0.4891465,
        size.width * 0.9701302,
        size.height * 0.4866019,
        size.width * 0.9684884,
        size.height * 0.4838885);
    path_0.lineTo(size.width * 0.9555953, size.height * 0.4875382);
    path_0.cubicTo(
        size.width * 0.9577023,
        size.height * 0.4910255,
        size.width * 0.9604884,
        size.height * 0.4943503,
        size.width * 0.9640186,
        size.height * 0.4973949);
    path_0.lineTo(size.width * 0.9749488, size.height * 0.4914586);
    path_0.close();
    path_0.moveTo(size.width * 0.9645767, size.height * 0.4661911);
    path_0.cubicTo(
        size.width * 0.9648837,
        size.height * 0.4631497,
        size.width * 0.9656419,
        size.height * 0.4601083,
        size.width * 0.9668233,
        size.height * 0.4571561);
    path_0.lineTo(size.width * 0.9533628, size.height * 0.4546338);
    path_0.cubicTo(
        size.width * 0.9519442,
        size.height * 0.4581879,
        size.width * 0.9510279,
        size.height * 0.4618535,
        size.width * 0.9506558,
        size.height * 0.4655382);
    path_0.lineTo(size.width * 0.9645767, size.height * 0.4661911);
    path_0.close();
    path_0.moveTo(size.width * 0.9668233, size.height * 0.4571561);
    path_0.cubicTo(
        size.width * 0.9681070,
        size.height * 0.4539363,
        size.width * 0.9694000,
        size.height * 0.4504236,
        size.width * 0.9706791,
        size.height * 0.4466115);
    path_0.lineTo(size.width * 0.9570791, size.height * 0.4444745);
    path_0.cubicTo(
        size.width * 0.9558419,
        size.height * 0.4481624,
        size.width * 0.9545953,
        size.height * 0.4515510,
        size.width * 0.9533628,
        size.height * 0.4546338);
    path_0.lineTo(size.width * 0.9668233, size.height * 0.4571561);
    path_0.close();
    path_0.moveTo(size.width * 0.9767628, size.height * 0.4253631);
    path_0.cubicTo(
        size.width * 0.9783535,
        size.height * 0.4188057,
        size.width * 0.9798465,
        size.height * 0.4116847,
        size.width * 0.9811721,
        size.height * 0.4040032);
    path_0.lineTo(size.width * 0.9673163, size.height * 0.4028790);
    path_0.cubicTo(
        size.width * 0.9660140,
        size.height * 0.4104204,
        size.width * 0.9645535,
        size.height * 0.4173917,
        size.width * 0.9630000,
        size.height * 0.4237962);
    path_0.lineTo(size.width * 0.9767628, size.height * 0.4253631);
    path_0.close();
    path_0.moveTo(size.width * 0.9842465, size.height * 0.3825605);
    path_0.cubicTo(
        size.width * 0.9850326,
        size.height * 0.3757452,
        size.width * 0.9856837,
        size.height * 0.3685828,
        size.width * 0.9861721,
        size.height * 0.3610669);
    path_0.lineTo(size.width * 0.9722326, size.height * 0.3606401);
    path_0.cubicTo(
        size.width * 0.9717535,
        size.height * 0.3680478,
        size.width * 0.9711070,
        size.height * 0.3751051,
        size.width * 0.9703349,
        size.height * 0.3818089);
    path_0.lineTo(size.width * 0.9842465, size.height * 0.3825605);
    path_0.close();
    path_0.moveTo(size.width * 0.9870884, size.height * 0.3395732);
    path_0.cubicTo(
        size.width * 0.9871628,
        size.height * 0.3360541,
        size.width * 0.9872000,
        size.height * 0.3324713,
        size.width * 0.9872000,
        size.height * 0.3288217);
    path_0.lineTo(size.width * 0.9732465, size.height * 0.3288217);
    path_0.cubicTo(
        size.width * 0.9732465,
        size.height * 0.3324268,
        size.width * 0.9732093,
        size.height * 0.3359650,
        size.width * 0.9731395,
        size.height * 0.3394395);
    path_0.lineTo(size.width * 0.9870884, size.height * 0.3395732);
    path_0.close();
    path_0.moveTo(size.width * 0.9872000, size.height * 0.3288217);
    path_0.cubicTo(
        size.width * 0.9872000,
        size.height * 0.3287420,
        size.width * 0.9872000,
        size.height * 0.3286624,
        size.width * 0.9872000,
        size.height * 0.3285828);
    path_0.lineTo(size.width * 0.9732465, size.height * 0.3286274);
    path_0.cubicTo(
        size.width * 0.9732465,
        size.height * 0.3286911,
        size.width * 0.9732465,
        size.height * 0.3287580,
        size.width * 0.9732465,
        size.height * 0.3288217);
    path_0.lineTo(size.width * 0.9872000, size.height * 0.3288217);
    path_0.close();
    path_0.moveTo(size.width * 0.9871907, size.height * 0.3281019);
    path_0.cubicTo(
        size.width * 0.9871907,
        size.height * 0.3280223,
        size.width * 0.9871907,
        size.height * 0.3279395,
        size.width * 0.9871860,
        size.height * 0.3278599);
    path_0.lineTo(size.width * 0.9732372, size.height * 0.3280478);
    path_0.cubicTo(
        size.width * 0.9732372,
        size.height * 0.3281115,
        size.width * 0.9732372,
        size.height * 0.3281752,
        size.width * 0.9732419,
        size.height * 0.3282389);
    path_0.lineTo(size.width * 0.9871907, size.height * 0.3281019);
    path_0.close();
    path_0.moveTo(size.width * 0.9871860, size.height * 0.3279873);
    path_0.cubicTo(
        size.width * 0.9871907,
        size.height * 0.3277930,
        size.width * 0.9871907,
        size.height * 0.3275955,
        size.width * 0.9871907,
        size.height * 0.3274013);
    path_0.lineTo(size.width * 0.9732372, size.height * 0.3273471);
    path_0.cubicTo(
        size.width * 0.9732372,
        size.height * 0.3275382,
        size.width * 0.9732372,
        size.height * 0.3277293,
        size.width * 0.9732326,
        size.height * 0.3279204);
    path_0.lineTo(size.width * 0.9871860, size.height * 0.3279873);
    path_0.close();
    path_0.moveTo(size.width * 0.9872000, size.height * 0.3262261);
    path_0.cubicTo(
        size.width * 0.9872000,
        size.height * 0.3260287,
        size.width * 0.9872000,
        size.height * 0.3258344,
        size.width * 0.9872000,
        size.height * 0.3256369);
    path_0.lineTo(size.width * 0.9732465, size.height * 0.3256369);
    path_0.cubicTo(
        size.width * 0.9732465,
        size.height * 0.3258280,
        size.width * 0.9732465,
        size.height * 0.3260159,
        size.width * 0.9732465,
        size.height * 0.3262070);
    path_0.lineTo(size.width * 0.9872000, size.height * 0.3262261);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
