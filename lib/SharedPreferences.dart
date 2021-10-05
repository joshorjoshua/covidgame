import 'package:shared_preferences/shared_preferences.dart';

int maskNum;
int perClick;
int perSec;
int survived;
int item1;
int item2;
int item3;
int item4;
int item5;
int item6;
int item7;
int item8;
int item9;
int item10;
int item11;
int item12;
int item13;
int item14;
int item15;
int item16;
int item17;
int item18;
int item19;
int item20;
int item21;
int item22;
int item23;
int item24;
int item25;
int item26;
int item27;
int item28;
int item29;
int item30;

List<String> keyString =[
 "item1",
 "item2",
 "item3",
 "item4",
 "item5",
 "item6",
 "item7",
 "item8",
 "item9",
 "item10",
 "item11",
 "item12",
 "item13",
 "item14",
 "item15",
 "item16",
 "item17",
 "item18",
 "item19",
 "item20",
 "item21",
 "item22",
 "item23",
 "item24",
 "item25",
 "item26",
 "item27",
 "item28",
 "item29",
 "item30",
];

addKeyNumToSF(String key, int value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool CheckValue = prefs.containsKey(key);

  if (!CheckValue) {
    prefs.setInt(key, value);
  }
}

setIntValueSF(String key, int value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt(key, value);
}

getIntValueSF(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int x = prefs.getInt(key) ?? 0;
  return x;
}