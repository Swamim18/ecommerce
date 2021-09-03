import 'package:flutter/material.dart';
import 'package:ecommerce/components/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var prodList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 2120,
      "price": 1085,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 1450,
      "price": 1120,
    },
    {
      "name": "Heels",
      "picture": "images/products/hills1.jpeg",
      "old_price": 1100,
      "price": 985,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 2120,
      "price": 1100,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: prodList.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProd(
          prodName: prodList[index]['name'],
          prodPic: prodList[index]['picture'],
          prodOldPrice: prodList[index]['old_price'],
          prodPrice: prodList[index]['price'],
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final prodName;
  final prodPic;
  final prodOldPrice;
  final prodPrice;

  SingleProd({this.prodName, this.prodPic, this.prodOldPrice, this.prodPrice});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prodName,
          child: Material(
              child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                //Passing the product values here
                builder: (context) => ProductDetails(
                      prodDetailName: prodName,
                      prodDetailNewPrice: prodPrice,
                      prodDetailOldPrice: prodOldPrice,
                      prodDetailPicture: prodPic,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Color.fromARGB(200, 255, 255, 255),
                  child: Center(
                      child: ListTile(
                    leading: Text(prodName,
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    title: Text(
                      "₹$prodPrice",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "₹$prodOldPrice",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough),
                    ),
                  )),
                ),
                child: Image.asset(
                  prodPic,
                  fit: BoxFit.cover,
                )),
          ))),
    );
  }
}
