import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:super_tech/All%20Page/Data%20File/All%20Laptop/all_data.dart';
import 'package:super_tech/All%20Page/Data%20File/All%20Pc/all_data.dart';
import 'package:super_tech/All%20Page/Data%20File/SSD%20Card/all_data.dart';
import 'package:url_launcher/url_launcher.dart';
class All_Ssd extends StatelessWidget {
  final DetailsOfSsd detailsOfSsd;
  const All_Ssd({Key? key, required this.detailsOfSsd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: 52,
          width: 165,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/Logo/Flogo.png"),
                  fit: BoxFit.fill
              )
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Share.share("https://www.youtube.com/channel/UCIZlOARmrLl67RWj5dNskPQ");
          }, icon: Icon(Icons.share,size: 30,)),
          SizedBox(
            width: 20,
          ),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Text("This site is working")));
          }, icon:Icon(Icons.settings,size: 30,),),

          SizedBox(width: 10,)
        ],
      ),
      body: Container(
        color: Colors.white24,
        child: SingleChildScrollView(
          child: Column(
            children: [
//image
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.8,
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: AssetImage(detailsOfSsd.userImage1),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
              ),
              //Slider
              Container(
                child: Column(
                  children: [
                    CarouselSlider(
                        items: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(detailsOfSsd.userImage1)
                                )
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(detailsOfSsd.userImage2)
                                )
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(detailsOfSsd.userImage3)
                                )
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 80,
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 250),
                          viewportFraction: 1.00,
                        ))
                  ],
                ),
              ),
//name and price
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                child: Container(
//product name
                  height: 65,
                  width: MediaQuery.of(context).size.width / 1.1,

                  child: Text(
                    detailsOfSsd.userName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black12),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Center(
                                      child: Text(
                                        "Price:",
                                        style: TextStyle(fontSize: 14),
                                      )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                      child: Text(
                                        detailsOfSsd.userPrice,
                                        style: TextStyle(fontSize: 14),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black12),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Center(
                                    child: Text(
                                      "Regular Price:",
                                      style: TextStyle(fontSize: 14),
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Center(
                                    child: Text(
                                      detailsOfSsd.userRegularPrice,
                                      style: TextStyle(fontSize: 14),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black12),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Center(
                                      child: Text(
                                        "Brand::",
                                        style: TextStyle(fontSize: 14),
                                      )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                      child: Text(
                                        detailsOfSsd.userBrand,
                                        style: TextStyle(fontSize: 14),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black12),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Center(
                                    child: Text(
                                      "Product Code:",
                                      style: TextStyle(fontSize: 14),
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Center(
                                    child: Text(
                                      detailsOfSsd.userProductCode,
                                      style: TextStyle(fontSize: 14),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
//product name
                  child: Text(
                    detailsOfSsd.userDescription,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
//product name
                  child: Text(
                    detailsOfSsd.userLongDescription,
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Colors.white30,
                                  ),
                                  alignment: Alignment.center,
                                  height: 25,
                                  width: 45,
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Colors.white30,
                                  ),
                                  alignment: Alignment.center,
                                  height: 25,
                                  width: 45,
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Colors.white30,
                                  ),
                                  alignment: Alignment.center,
                                  height: 25,
                                  width: 45,
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                      alignment: Alignment.center,
                      height: 50,
                      width: 130,
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            fontSize: 18, color: Colors.white),
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
