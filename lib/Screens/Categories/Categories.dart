import 'package:flutter/material.dart';
import 'package:englishapp/Config/Constrains.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}
PublicConstrains constrains = PublicConstrains();
class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: constrains.actnclrgrn,
        centerTitle: true,
        title: Text("Categories"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3 ,
          children: <Widget>[
             grid("images/car.png",  "Car"),
            grid("images/mobile.png","Mobile"),
            grid("images/bike.png",  "Motercycle"),
            grid("images/money.png",  "Money"),
            grid("images/jewlry.png",  "Jewelery"),
            grid("images/bicycle.png",  "Bicycle"),
            grid("images/papers.png",  "Paper"),
            grid("images/card.png",  "Cards"),
            grid("images/person.png",  "Person"),
            grid("images/bags.png",  "Bags"),
            grid("images/birds.png",  "Birds"),
            grid("images/animals.png",  "Animal"),
            grid("images/other.png",  "Other"),
          ],
        ),
      ),
    );
  }
}
Widget grid(String image, String title){
  return Container(
      child: Column(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                Image.asset(image,height: 80,),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Text(title)
        ],
      )
  );
}
