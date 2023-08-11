import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: size.height / 5,
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(45),
                ),
                boxShadow: [BoxShadow(offset: Offset(0, 2), blurRadius: 2)]),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 45,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/logo.png',
                        ),
                        radius: 42,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Column(
                      children: [
                        Text(
                          "Special Chef",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black54),
                          child: Text(
                            'Gold Member',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      "8 \$ CAN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      Positioned(
          bottom: 0,
          child: Container(
            height: 50,
            width: size.width,
            child: Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(horizontal: 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                decoration: InputDecoration(border: InputBorder.none,
                labelText: "What does your belly want to eat? ",
                suffixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.only(left: 20)),
              
                
              ),
            ),
          ))
    ]));
  }
}
