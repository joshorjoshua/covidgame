import 'package:flutter/material.dart';
import 'userData.dart';
import 'bottomSheet.dart';
import 'itemView.dart';
import 'SharedPreferences.dart';

class medsShopView extends StatefulWidget {
  User user;

  medsShopView({Key key, @required this.user});
  @override
  _medsShopViewState createState() => _medsShopViewState(user: user);
}

class _medsShopViewState extends State<medsShopView> {

  _medsShopViewState({Key key, this.user});
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
          itemCount: 6, //10
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                showBottomSheet(
                    context: context,
                    builder: (context) => bottomSheetWidget(index+19));
                setState(() {});
              },
              child: Container(
                color: Color(colors[0]),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 4,
                        child: iconAndName(
                          image: user.items[index+19].image,
                          name: user.items[index+19].name,
                        )),
                    Expanded(
                      flex: 1,
                      child: itemPriceView(price: user.items[index+19].price),
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