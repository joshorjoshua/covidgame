
List<String> itemName = [
"라면",
"햇반",
"삼각김밥",
"떡볶이",
"스팸",
"시리얼",
"과자",
"옥수수 캔",
"팝콘",
"건 망고",
"물",
"콜라",
"달고나 커피",
"휴지",
"물티슈",
"비누",
"칫솔과 치약",
"샴푸",
"손소독제",
"진통제",
"기침약",
"마X카솔",
"반창고",
"설사약",
"해열제",
"책",
"체스",
"카드",
"게임기1",
"게임기2",
"게임기3"
];
List<int> itemPrice = [
100,
2000,
75000,
200000,
12500000,
90000000,
150000000,
1750000000,
20000000000,
300000000000,
3000,
25000,
99999999999999,
1,
8000,
125000,
40000000,
950000000,
75000000000,
2000,
10000,
10000000,
100000000,
1000000000,
3000000000000,
10,
40000,
3000000,
80000000,
2400000000,
8450000000000
];

List<String> imageList = [
  "assets/images/Asset 10@2x.png",
  "assets/images/Asset 16@2x.png",
  "assets/images/Asset 23@2x.png",
  "assets/images/Asset 5@2x.png",
  "assets/images/Asset 29@2x.png",
  "assets/images/Asset 14@2x.png",
  "assets/images/Asset 17@2x.png",
  "assets/images/Asset 7@2x.png",
  "assets/images/Asset 1@2x.png",
  "assets/images/Asset 2@2x.png",
  "assets/images/Asset 11@2x.png",
  "assets/images/Asset 20@2x.png",
  "assets/images/Asset 24@2x.png",
  "assets/images/Asset 27@2x.png",
  "assets/images/Asset 3@2x.png",
  "assets/images/Asset 6@2x.png",
  "assets/images/Asset 26@2x.png",
  "assets/images/Asset 30@2x.png",
  "assets/images/Asset 28@2x.png",
  "assets/images/Asset 22@2x.png",
  "assets/images/Asset 9@2x.png",
  "assets/images/Asset 31@2x.png",
  "assets/images/Asset 32@2x.png",
  "assets/images/Asset 8@2x.png",
  "assets/images/Asset 15@2x.png",
  "assets/images/Asset 35@2x.png",
  "assets/images/Asset 34@2x.png",
  "assets/images/Asset 33@2x.png",
  "assets/images/Asset 21@2x.png",
  "assets/images/Asset 19@2x.png",
  "assets/images/Asset 12@2x.png",
];

List<int> categoryNum = [
10,
3,
6,
6,
6
];

class ItemData {
  String name;
  int price;
  String image;

  ItemData(this.name, this.price, this.image);
}

class User {
  var items = List<ItemData>.generate(
    itemName.length,
    (i) => ItemData(itemName[i], itemPrice[i], imageList[i]));
    
  User();
}
