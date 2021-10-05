import 'package:corona_game/buttons.dart';
import 'package:flutter/material.dart';
import 'userData.dart';
import 'SharedPreferences.dart';

class maskProductionRateView extends StatefulWidget {
  @override
  _maskProductionRateViewState createState() => _maskProductionRateViewState();
}

class _maskProductionRateViewState extends State<maskProductionRateView> {
  int x;

  List<int> colors = [
    0xFFFFE5A3,
    0xFFF0F2DF,
    0xFF3B2508,
    0xFFF5C167,
    0xFFCC8E41,
  ];

  getInt() async {
    x = await getIntValueSF("perClick");
    maskNum = await getIntValueSF("maskNum");
    setState(() {});
  }

  purchase() {
    if (maskNum >= x) {
      setIntValueSF("maskNum", maskNum - x);
      setState(() {
        x++;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colors[0]),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              setIntValueSF("perClick", x);
              Navigator.of(context).pop();
            }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Color(colors[1]),
              child: MaterialButton(
                onPressed: () {
                  purchase();
                },
                child: Text("$x"),
              ),
            ),
            Text("Increase production rate")
          ],
        ),
      ),
    );
  }
}
