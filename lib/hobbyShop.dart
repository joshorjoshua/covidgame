import 'package:flutter/material.dart';
import 'userData.dart';
import 'bottomSheet.dart';
import 'itemView.dart';
import 'SharedPreferences.dart';

class hobbyShopView extends StatefulWidget {
  User user;

  hobbyShopView({Key key, @required this.user});

  @override
  _hobbyShopViewState createState() => _hobbyShopViewState(user: user);
}

class _hobbyShopViewState extends State<hobbyShopView> {

  _hobbyShopViewState({Key key, this.user});
  User user;

  List<int> colors = [
    0xFFFFE5A3,
    0xFFF0F2DF,
    0xFF3B2508,
    0xFFF5C167,
    0xFFCC8E41,
  ];

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
                    builder: (context) => bottomSheetWidget(index+25));
                setState(() {});
              },
              child: Container(
                color: Color(colors[0]),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 4,
                        child: iconAndName(
                          image: user.items[index+25].image,
                          name: user.items[index+25].name,
                        )),
                    Expanded(
                      flex: 1,
                      child: itemPriceView(price: user.items[index+25].price),
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

