import 'package:ecommerce_app_clone/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BikeDetail extends StatefulWidget {
  const BikeDetail({Key? key}) : super(key: key);

  @override
  _BikeDetailState createState() => _BikeDetailState();
}

class _BikeDetailState extends State<BikeDetail> {
  List image = [
    "assets/bikes.png",
    "assets/lightblue.jpg",
    "assets/vintage_edition.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.black,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Yamaha FZS V3",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: image
                    .map((item) => Container(
                          child: Center(
                              child: Image.asset(item,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width *
                                      0.99)),
                        ))
                    .toList(),
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Yamaha Bikes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Yamaha FZS V3",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "RS: 350k",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Color: "),
                  CircleAvatar(
                    radius: 8,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("Dark Blue"),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("light Blue"),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("Vintage edition")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Cartpage();
                        }));
                      },
                      child: Text("Add To Cart")))
            ],
          ),
        ),
      ),
    );
  }
}
