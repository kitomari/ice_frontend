
import 'package:flutter/material.dart';
import 'package:icecream/models/imageModels.dart';
import 'package:icecream/widgets/cardgrid.dart';

class HomepageScreen extends StatefulWidget {
  // const HomepageScreen({ Key? key }) : super(key: key);

  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {

List<ModelGrid> home_items =[
  ModelGrid(
    name: "Ice Cream",   
    price: 'Tsh 1000/=', 
    image: 'assets/images/icecreamone.png'
  ),
  ModelGrid(
    name: "Chocolate",   
    price: 'Tsh 1000/=', 
    image: 'assets/images/icecreamtwo.jpg'
  ),
  ModelGrid(
    name: "Ice..",   
    price: 'Tsh 1000/=', 
    image: 'assets/images/icecreamthree.jpg'
  ),
  ModelGrid(
    name: "Ugali",   
    price: 'Tsh 1000/=', 
    image: 'assets/images/icees.jpg'
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.search),
          color: Colors.blueAccent, 
          onPressed: (){}
        ),
        title: Text("IceCream store", style: TextStyle(color: Colors.blueAccent),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.blueAccent, 
            onPressed: (){}
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ), 
          itemCount: home_items.length,
          itemBuilder: (BuildContext context, int index){
            return GridCard(
              onPress: (){},
              name: home_items[index].name,
              price: home_items[index].price,
              image: home_items[index].image,
            );
          }
        ),
      ),
    );
  }
}