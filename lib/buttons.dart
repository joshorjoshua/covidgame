import 'package:flutter/material.dart';
import 'SharedPreferences.dart';
import 'userData.dart';

class purchaseButtons extends StatefulWidget {
  purchaseButtons(this.index);
  int index;

  @override
  _purchaseButtonsState createState() => _purchaseButtonsState(index);
}

class _purchaseButtonsState extends State<purchaseButtons> {
  User user;
  int itemNum;
  int x = 1;
  int y = 1;
  int index;

  _purchaseButtonsState(this.index);

  getInt() async {
    itemNum = await getIntValueSF(keyString[index]);
    maskNum = await getIntValueSF("maskNum");
    setState(() {});
  }

  purchase() {
    if (maskNum >= x * itemPrice[index]) {
      setIntValueSF(keyString[index], itemNum + x);
      setIntValueSF("maskNum", maskNum - x * itemPrice[index]);
      Navigator.of(context).pop();
    }
  }

  sell() {
    setIntValueSF(keyString[index], itemNum - y);
    setIntValueSF("maskNum", maskNum + y * itemPrice[index]);
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInt();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("$itemNum + "),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            x++;
                          });
                        },
                        child: Icon(Icons.arrow_upward)),
                    GestureDetector(
                        onTap: () {
                          if (x > 0) {
                            setState(() {
                              x--;
                            });
                          }
                        },
                        child: Icon(Icons.arrow_downward)),
                  ],
                )),
                SizedBox(
                  width: 5,
                ),
                Container(child: Text("$x")),
              ],
            ),
            MaterialButton(
                onPressed: () {
                  purchase();
                }, //addCount(),
                child: Text(
                  '구입',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("$itemNum - "),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          if (y < itemNum) {
                            setState(() {
                              y++;
                            });
                          }
                        },
                        child: Icon(Icons.arrow_upward)),
                    GestureDetector(
                        onTap: () {
                          if (y > 0) {
                            setState(() {
                              y--;
                            });
                          }
                        },
                        child: Icon(Icons.arrow_downward)),
                  ],
                )),
                SizedBox(
                  width: 5,
                ),
                Container(child: Text("$y")),
              ],
            ),
            MaterialButton(
                onPressed: () {
                  sell();
                }, //addCount(),
                child: Text(
                  '판매',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ],
    );
  }
}

/*
class SheetButton extends StatefulWidget {
  _SheetButtonState createState() => _SheetButtonState();
}

class _SheetButtonState extends State<SheetButton> {
  bool checkingFlight = false;
  bool success = false;

  @override
  Widget build(BuildContext context) {
    return !checkingFlight
        ? MaterialButton(
            color: Colors.grey[800],
            onPressed: () async {
              setState(() {
                checkingFlight = true;
              });
              await Future.delayed(Duration(seconds: 1));
              setState(() {
                success = true;
              });
              await Future.delayed(Duration(milliseconds: 500));
              Navigator.pop(context);
            },
            child: Text(
              '구입',
              style: TextStyle(color: Colors.white),
            ),
          )
        : !success
            ? CircularProgressIndicator()
            : Icon(
                Icons.check,
                color: Colors.green,
              );
  }
}
*/
