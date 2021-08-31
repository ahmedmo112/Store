import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothing_shop_app/module/home/home_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  List<String> images = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
  ];

  Widget buildSizeButton({title, isSeleted}) {
    return MaterialButton(
      height: 40,
      minWidth: 40,
      elevation: 0,
      color: isSeleted ? Color(0xff8f7fc4) : Color(0xffe8e8e8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSeleted ? Colors.white : Color(0xff727274),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
    body: SafeArea(
      child: Column(
        children: [
          Expanded(child: Container(
            child: CarouselSlider(
              
              items:  images.map(
                (e) =>
                 Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                       color: Color(0xffb2adca).withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 10.0,
                                offset: -Offset(0, 3),
                    ),

                  ],
                  image: DecorationImage(image: AssetImage(e),fit: BoxFit.cover)
                ),
                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                    );
                                  },
                                  icon: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Color(0xffae9fe0),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.shopping_bag_rounded,
                                      color: Color(0xffae9fe0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
              )
              ).toList(),
              
              options: CarouselOptions(
                scrollPhysics: ScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                height: double.infinity,
                enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  autoPlay: true
              ),

              ),
          )),
           Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Berrylush",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff39393b),
                          ),
                        ),
                        Text(
                          "\$120",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff39393b),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Price Incluslve of all Texes",
                      style: TextStyle(
                        color: Color(0xff979797),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose Size",
                          style: TextStyle(
                            color: Color(0xff979797),
                          ),
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffac9ddd),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            buildSizeButton(
                              title: "S",
                              isSeleted: false,
                            ),
                            buildSizeButton(
                              title: "M",
                              isSeleted: false,
                            ),
                            buildSizeButton(
                              title: "L",
                              isSeleted: true,
                            ),
                            buildSizeButton(
                              title: "XL",
                              isSeleted: false,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xff317aaf),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xfff19a9c),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description"),
                            Container(
                              width: 50,
                              child: Divider(
                                thickness: 3,
                                color: Color(0xff6b648f)
                             ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Delivery"),
                            Container(
                              width: 50,
                              child: Divider(
                                  thickness: 3, color: Colors.transparent),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reviews"),
                            Container(
                              width: 50,
                              child: Divider(
                                thickness: 3,
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: double.infinity,

                      height: 80,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Berrylush is a casualwear In Wastern syle that is",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffb2b2b2),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "relaxed,occasinal and suited fir everyday use.",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffb2b2b2),
                              ),
                            )
                         
                         
                          ],

                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
            )
        ],
      )
      ),  
    );
  }
}