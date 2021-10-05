import 'package:flutter/material.dart';
import 'userData.dart';
import 'itemView.dart';
import 'SharedPreferences.dart';
import 'bottomSheet.dart';

class foodShopView extends StatefulWidget {
  User user;

  foodShopView({Key key, @required this.user});

  @override
  _foodShopViewState createState() => _foodShopViewState(user: user);
}

class _foodShopViewState extends State<foodShopView> {
  _foodShopViewState({Key key, this.user});
  User user;

  List<int> colors = [
    0xFFFFE5A3,
    0xFFF0F2DF,
    0xFF3B2508,
    0xFFF5C167,
    0xFFCC8E41,
  ];

  int maskNum;

  getInt() async {
    maskNum = await getIntValueSF("maskNum");
    setState(() {});
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
        title: Text("보유 마스크 : $maskNum"),
      ),
      body: Center(
        child: GridView.builder(
          itemCount: 10, //10
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                showBottomSheet(
                    context: context,
                    builder: (context) => bottomSheetWidget(index));
                setState(() {});
              },
              child: Container(
                color: Color(colors[0]),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 4,
                        child: iconAndName(
                          image: user.items[index].image,
                          name: user.items[index].name,
                        )),
                    Expanded(
                      flex: 1,
                      child: itemPriceView(price: user.items[index].price),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
