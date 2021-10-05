import 'package:flutter/material.dart';

class iconAndName extends StatefulWidget {
  String image;
  String name;

  iconAndName({Key key, this.image, @required this.name});

  @override
  _iconAndNameState createState() =>
      _iconAndNameState(image: image, name: name);
}

class _iconAndNameState extends State<iconAndName> {
  @override
  List<int> colors = [
    0xFFFFE5A3,
    0xFFF0F2DF,
    0xFF3B2508,
    0xFFF5C167,
    0xFFCC8E41,
  ];

  String image;
  String name;

  _iconAndNameState({Key key, this.image, @required this.name});

  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5, bottom: 10),
        decoration: BoxDecoration(
            color: Color(colors[3]),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            boxShadow: [
              BoxShadow(color: Color(colors[4]), offset: Offset(5.0, 5.0)),
            ]),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.45,
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  "$image",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text("$name", style: TextStyle(color: Color(colors[2]))),
            ),
          ],
        ));
  }
}

class itemPriceView extends StatefulWidget {
  int price;
  itemPriceView({Key key, this.price});
  @override
  _itemPriceViewState createState() => _itemPriceViewState(price: price);
}

class _itemPriceViewState extends State<itemPriceView> {
  int price;
  _itemPriceViewState({Key key, this.price});

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
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        decoration: BoxDecoration(
          color: Color(colors[2]),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Center(
          child: Text(
            "$price",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
