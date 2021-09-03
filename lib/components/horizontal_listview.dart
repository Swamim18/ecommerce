import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Catagory(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'Tshirt',
          ),
          Catagory(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'Dress',
          ),
          Catagory(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'Formal',
          ),
          Catagory(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'Informal',
          ),
          Catagory(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'Shoe',
          ),
          Catagory(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'Jeans',
          ),
          Catagory(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Catagory extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Catagory({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
            onTap: () {},
            child: Container(
                width: 100.0,
                child: ListTile(
                    title: Image.asset(
                      imageLocation,
                      width: 100.0,
                      height: 80.0,
                    ),
                    subtitle: Container(
                      alignment: Alignment.topCenter,
                      child: Text(
                        imageCaption,
                        style: new TextStyle(fontSize: 12.0),
                      ),
                    )))));
  }
}
