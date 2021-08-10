
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  // const GridCard({ Key? key }) : super(key: key);
  final String name;
  final String price;
  final String image;
  final Function onPress;

  GridCard({
    this.name,
    this.price,
    this.image,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage("icees.jpeg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              Padding(padding: const EdgeInsets.only(left: 4.0),
              child: Text("."),
              ),
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                // child: Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Center(
                //     child: Row(
                //       children: []
                //     )
                //   ),
                //   ),
              )
            ]
          ),
        ),
      ),
    );
  }
}