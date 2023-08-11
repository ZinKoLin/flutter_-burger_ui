import 'package:flutter/material.dart';

class Hambergerslist extends StatefulWidget {
  final int row;
  Hambergerslist(this.row);

  @override
  State<Hambergerslist> createState() => _HambergerslistState();
}

class _HambergerslistState extends State<Hambergerslist> {
  @override
  Widget build(BuildContext context) {
    int item = 10;
    Widget baconImage = Container(
      height: 120,
      child: Image.asset("images/burger1.png"),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: item,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 240,
                    width: 200,
                    margin: EdgeInsets.only(
                        left: 20, right: index == item ? 20 : 0),
                    child: GestureDetector(
                      onTap: () {
                        print("hi");
                      },
                      child: Card(
                        color: Colors.teal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Burger",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "15,95 \$ CAN",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(45),
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: GestureDetector(
                      onTap: () {},
                      child: baconImage,
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
