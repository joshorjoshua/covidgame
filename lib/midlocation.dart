import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'maskProductionRate.dart';
import 'maskMachineRate.dart';
import 'foodShop.dart';
import 'sanitaryShop.dart';
import 'drinkShop.dart';
import 'medsShop.dart';
import 'hobbyShop.dart';
import 'userData.dart';
import 'supermarket.dart';
import 'medshop.dart';
import 'SharedPreferences.dart';

class midLocation extends StatefulWidget {
  @override
  _midLocationState createState() => _midLocationState();
}

class _midLocationState extends State<midLocation> {
  var categoryName = [
    "마스크 제작 속도",
    "마스크 기계 효율",
    "식료품",
    "음료",
    "위생용품",
    "약",
    "취미",
  ];

  var color1 = 0xFFFFE5A3;
  var color2 = 0xFFF0F2DF;
  var color3 = 0xFF3B2508;
  var color4 = 0xFFF5C167;
  var color5 = 0xFFCC8E41;

  var user = User();

  getInt() async {
    maskNum = await getIntValueSF("maskNum");
    perClick = await getIntValueSF("perClick");
    perSec = await getIntValueSF("perSec");
    survived = await getIntValueSF("survived");

    item1 = await getIntValueSF("item1");
    item2 = await getIntValueSF("item2");
    item3 = await getIntValueSF("item3");
    item4 = await getIntValueSF("item4");
    item5 = await getIntValueSF("item5");
    item6 = await getIntValueSF("item6");
    item7 = await getIntValueSF("item7");
    item8 = await getIntValueSF("item8");
    item9 = await getIntValueSF("item9");
    item10 = await getIntValueSF("item10");
    item11 = await getIntValueSF("item11");
    item12 = await getIntValueSF("item12");
    item13 = await getIntValueSF("item13");
    item14 = await getIntValueSF("item14");
    item15 = await getIntValueSF("item15");
    item16 = await getIntValueSF("item16");
    item17 = await getIntValueSF("item17");
    item18 = await getIntValueSF("item18");
    item19 = await getIntValueSF("item19");
    item20 = await getIntValueSF("item20");
    item21 = await getIntValueSF("item21");
    item22 = await getIntValueSF("item22");
    item23 = await getIntValueSF("item23");
    item24 = await getIntValueSF("item24");
    item25 = await getIntValueSF("item25");
    item26 = await getIntValueSF("item26");
    item27 = await getIntValueSF("item27");
    item28 = await getIntValueSF("item28");
    item29 = await getIntValueSF("item29");
    item30 = await getIntValueSF("item30");

    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    getInt();

    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      maskNum += perClick;
      print("shaking");
    });
  }

  void categoryTap(var index) {
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(
              builder: (context) => maskProductionRateView(),
            ))
            .then((value) => getInt());
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(
              builder: (context) => maskMachineRateView(),
            ))
            .then((value) => getInt());
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(
              builder: (context) => foodShopView(user: user),
            ))
            .then((value) => getInt());
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(
              builder: (context) => drinkShopView(user: user),
            ))
            .then((value) => getInt());
        ;
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(
              builder: (context) => sanitaryShopView(user: user),
            ))
            .then((value) => getInt());
        ;
        break;
      case 5:
        Navigator.of(context)
            .push(MaterialPageRoute(
              builder: (context) => medsShopView(user: user),
            ))
            .then((value) => getInt());

        break;
      case 6:
        Navigator.of(context)
            .push(MaterialPageRoute(
              builder: (context) => hobbyShopView(user: user),
            ))
            .then((value) => getInt());
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(color1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("마스크 제작 속도: ${perClick.toString()}",
                    style: TextStyle(fontSize: 15)),
                Text("초당 마스크 생산량: ${perSec.toString()}",
                    style: TextStyle(fontSize: 15))
              ],
            ),
            Text("보유 마스크 수: ${maskNum.toString()}",
                style: TextStyle(fontSize: 15))
          ],
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image(
                image: AssetImage('assets/images/midlocation.png'),
                fit: BoxFit.fitWidth),
            Positioned(
                left: 0,
                top: 20,
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => supermarket(),
                      ));
                    },
                    child: Container(
                      width: 50,
                      height: 150,
                      color: Colors.transparent,
                    ))),
            Positioned(
                right: 0,
                top: 25,
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => medsShop(),
                      ));
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.transparent,
                    ))),
            //Positioned...
            //Positioned...

            DraggableScrollableSheet(
              initialChildSize: 0.6,
              maxChildSize: 0.7,
              minChildSize: 0.6,
              builder: (BuildContext context, myscrollController) {
                return Container(
                  child: ListView.separated(
                    controller: myscrollController,
                    itemCount: 2,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(color: Color(color5)),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          categoryTap(index);
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 0.0, bottom: 0.0),
                          color: Color(color1),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                      'assets/images/defaultPhoto.png')),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                      child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(color4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(color5),
                                              offset: Offset(5.0, 5.0)),
                                        ]),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 50.0, vertical: 0),
                                    child: Center(
                                        child: Text(categoryName[index])),
                                  ))),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Color(color2),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
