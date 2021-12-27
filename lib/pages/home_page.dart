import 'package:ecommerce_app_clone/detailpage/bike_detail.dart';
import 'package:ecommerce_app_clone/detailpage/laptop_detail.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = ["bikes.png", "bulb.jpg"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Searchbar(),
                Categories(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Best Sellings",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Bestsellings(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Bestsellings extends StatelessWidget {
  const Bestsellings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BikeDetail();
              }));
            },
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.4,
              //   color: Colors.blue[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: Colors.grey[300],
                    child: Center(
                      child: Image(
                        image: AssetImage(
                          "assets/bikes.png",
                        ),
                        //fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Yamaha Bikes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Yamaha FZS V3",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "RS: 350k",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Laptopdetail();
              }));
            },
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.4,
              // color: Colors.blue[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: Colors.grey[300],
                    child: Image(
                      image: AssetImage(
                        "assets/laptop.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Laptops",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "DEll I7 Laptop",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "RS: 150k",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.4,
            //  color: Colors.blue[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.grey[300],
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        "assets/iPhone_13_Pro.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "iPhones",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "iPhone 13 Pro",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "RS: 250k",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.4,
            //  color: Colors.blue[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.grey[300],
                  child: Image(
                    image: AssetImage(
                      "assets/gents-shoes.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Gents shoes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Goldstar",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "RS: 2500",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width * 0.4,
            //  color: Colors.blue[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.grey[300],
                  child: Image(
                    image: AssetImage(
                      "assets/ladies_shoes.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Ladies shoes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Goldstar",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "RS: 1500",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width * 0.4,
            //  color: Colors.blue[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.grey[300],
                  child: Image(
                    image: AssetImage(
                      "assets/helmet.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Helmets",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Helmet",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "RS: 6000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Container(
            height: 100,
            width: double.infinity,
            //   color: Colors.blue,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        child: Image(
                          image: AssetImage(
                            "assets/gents-shoes.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 20,
                        // color: Colors.grey,
                        child: Text("Gents Shoes"),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        child: Image(
                          image: AssetImage(
                            "assets/ladies_shoes.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 20,
                        // color: Colors.grey,
                        child: Text("Ladies Shoes"),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        child: Image(
                          image: AssetImage(
                            "assets/bulb.jpg",
                          ),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 20,
                        // color: Colors.grey,
                        child: Text("Bulbs"),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        child: Image(
                          image: AssetImage(
                            "assets/bikes.png",
                          ),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 20,
                        // color: Colors.grey,
                        child: Text("Bikes"),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        child: Image(
                          image: AssetImage(
                            "assets/iPhone_13_Pro.jpg",
                          ),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 20,
                        // color: Colors.grey,
                        child: Text("iPhones"),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        child: Image(
                          image: AssetImage(
                            "assets/laptop.jpg",
                          ),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 20,
                        // color: Colors.grey,
                        child: Text("Laptops"),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        child: Image(
                          image: AssetImage(
                            "assets/electronics.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 20,
                        // color: Colors.grey,
                        child: Text("Electronics"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Searchbar extends StatelessWidget {
  const Searchbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      // color: Colors.amber,
      child: Row(
        children: [
          Expanded(
            child: Card(
              color: Colors.grey[300],
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.search)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Search"),
                    ),
                    flex: 5,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
