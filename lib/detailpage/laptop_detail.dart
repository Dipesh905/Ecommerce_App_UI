import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app_clone/cart_page.dart';
import 'package:flutter/material.dart';

class Laptopdetail extends StatefulWidget {
  const Laptopdetail({Key? key}) : super(key: key);

  @override
  _LaptopdetailState createState() => _LaptopdetailState();
}

class _LaptopdetailState extends State<Laptopdetail> {
  List image = [
    "assets/black_laptop.jpg",
    "assets/white_laptop.jpg",
    "assets/laptop.jpg",
    "assets/thin_Laptop.jpg"
  ];

  int a = 1;

  // Initial Selected Value
  String dropdownvalue = 'White';

  // List of items in our dropdown menu
  var items = [
    'Red',
    'Blue',
    'Green',
    'White',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
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
                                        // fit: BoxFit.cover,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.99)),
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rs 100k",
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                          Text(
                            "Dell Laptops",
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            "by: Dell",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                              "Dell is an American company that develops, sells, repairs, and supports computers and related products and services, and is owned by its parent company of Dell Technologies."),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text("Quantity"),
                                    Card(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            color: Colors.green,
                                            child: Center(child: Text("$a")),
                                          ),
                                          Container(
                                            height: 40,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            color: Colors.blue,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: MaterialButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        a = a + 1;
                                                      });
                                                    },
                                                    child: Text("+"),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: MaterialButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        a = a - 1;
                                                      });
                                                    },
                                                    child: Text("-"),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Color"),
                                    DropdownButton(
                                      // Initial Value
                                      value: dropdownvalue,

                                      // Down Arrow Icon
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),

                                      // Array list of items
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Cartpage();
                                }));
                              },
                              child: Text("Add to Cart"))
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 180,
                right: 20,
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.favorite_border),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      child: Icon(Icons.share),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
