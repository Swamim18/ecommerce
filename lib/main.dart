import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:ecommerce/components/horizontal_listview.dart';
import 'package:ecommerce/components/products.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
        height: 200.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/c1.jpg'),
            AssetImage('images/m1.jpeg'),
            AssetImage('images/w1.jpeg'),
            AssetImage('images/w3.jpeg'),
            AssetImage('images/w4.jpeg'),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 5.0,
          dotBgColor: Color.fromARGB(0, 0, 0, 0),
        ));

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text('Shopping App'),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: null),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: null)
        ],
      ),

      //DRAWER WIDGET
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          //DRAWER HEADER
          new UserAccountsDrawerHeader(
            accountName: Text('Swamim Saikia'),
            accountEmail: Text('swamim@mail.com'),
            currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            )),
            decoration: new BoxDecoration(color: Colors.purple),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person),
            ),
          ),

          InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                ),
              )),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Catagories'),
              leading: Icon(Icons.dashboard),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help),
            ),
          )
        ],
      )),

      //LIST VIEW WIDGET
      body: new ListView(
        children: <Widget>[
          //IMAGE CAROUSEL HERE
          imageCarousel,
          //PADDING WIDGET
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Catagories'),
          ),

          //HORIZONTAL LIST VIEW HERE
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),
          ),

          Container(
            height: 320,
            child: Products(),
          )
        ],
      ),
    );
  }
}
