import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'NeedFood',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'crimson',
            fontWeight: FontWeight.w400
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 20,
              color: Colors.amber,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              ),
              child: Image(image: AssetImage('assets/row-banner 1.png')),
            ),
            Padding(
                padding: EdgeInsets.only(left: 18, right: 10,top: 10),
              child: Text('Categories',style: TextStyle(fontSize: 20,fontFamily: 'medium'),),
            ),
            Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: Card(
                    color: Colors.white70,
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image(image: AssetImage('assets/bur.png')),
                        Text('Burger',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Card(
                    color: Colors.white70,
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image(image: AssetImage('assets/cofe.png')),
                        Text('Drink',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Card(
                    color: Colors.white70,
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Image(image: AssetImage('assets/pitsa.png')),
                        Text('Pizza Fruit', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Card(
                    color: Colors.white70,
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Image(image: AssetImage('assets/p1.png'),),
                        Text('Pizza',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Popular Now',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'medium'
                ),
              ),
            ),
            Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/product/p1.jpg'),height: 120,),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
