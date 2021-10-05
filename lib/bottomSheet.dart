import 'package:flutter/material.dart';
import 'buttons.dart';
import 'userData.dart';

class bottomSheetWidget extends StatefulWidget {
  @override
  bottomSheetWidget(this.index);
  int index;

  _bottomSheetWidgetState createState() => _bottomSheetWidgetState(index);
}

class _bottomSheetWidgetState extends State<bottomSheetWidget> {
  _bottomSheetWidgetState(this.index);

  int index;
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
    return Container(
      height: 200,
      color: Color(colors[1]),
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
              height: 160,
              decoration: BoxDecoration(
                color: Color(colors[3]),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Text("${user.items[index].count}"),
                    purchaseButtons(index) //, SheetButton()
                  ]),
            )
          ]),
    );
  }
}
