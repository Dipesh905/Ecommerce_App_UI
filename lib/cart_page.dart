import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  int a = 1;
  int b = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cart",
                        style: TextStyle(
                            //  fontWeight: FontWeight.bold,
                            // color: Colors.green,
                            fontSize: 20),
                      ),
                      ListTile(
                        leading: Image(
                          image: AssetImage("assets/bikes.png"),
                        ),
                        title: Text("FZ S V3"),
                        subtitle: Text(
                          "Rs 350k",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        trailing: Container(
                          height: 50,
                          width: 150,
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  color: Colors.green,
                                  child: Center(child: Text("$a")),
                                ),
                              ),
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
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Expanded(
                                    child: Column(
                                  children: [
                                    Text("Total"),
                                    Text(
                                      "Rs 350K",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                        //  fontSize: 20
                                      ),
                                    ),
                                  ],
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image(
                          image: AssetImage("assets/laptop.jpg"),
                        ),
                        title: Text("Dell i5 laptop"),
                        subtitle: Text(
                          "Rs 150k",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        trailing: Container(
                          height: 50,
                          width: 150,
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  color: Colors.green,
                                  child: Center(child: Text("$b")),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      b = b + 1;
                                    });
                                  },
                                  child: Text("+"),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      b = b - 1;
                                    });
                                  },
                                  child: Text("-"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Expanded(
                                    child: Column(
                                  children: [
                                    Text("Total"),
                                    Text(
                                      "Rs 150K",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                        //  fontSize: 20
                                      ),
                                    ),
                                  ],
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image(
                          image: AssetImage("assets/bikes.png"),
                        ),
                        title: Text("FZ S V3"),
                        subtitle: Text(
                          "Rs 350k",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        trailing: Container(
                          height: 50,
                          width: 150,
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  color: Colors.green,
                                  child: Center(child: Text("$a")),
                                ),
                              ),
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
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Expanded(
                                    child: Column(
                                  children: [
                                    Text("Total"),
                                    Text(
                                      "Rs 350K",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                        //  fontSize: 20
                                      ),
                                    ),
                                  ],
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image(
                          image: AssetImage("assets/laptop.jpg"),
                        ),
                        title: Text("Dell i5 laptop"),
                        subtitle: Text(
                          "Rs 150k",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        trailing: Container(
                          height: 50,
                          width: 150,
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  color: Colors.green,
                                  child: Center(child: Text("$b")),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      b = b + 1;
                                    });
                                  },
                                  child: Text("+"),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      b = b - 1;
                                    });
                                  },
                                  child: Text("-"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Expanded(
                                    child: Column(
                                  children: [
                                    Text("Total"),
                                    Text(
                                      "Rs 150K",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                        //  fontSize: 20
                                      ),
                                    ),
                                  ],
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Total"),
                      Text(
                        "Rs 500k",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text("Check Out")),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
