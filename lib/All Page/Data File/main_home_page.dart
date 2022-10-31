import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';
import 'package:super_tech/All%20Page/Data%20File/All%20Laptop/gridviewbilder.dart';
import 'package:super_tech/All%20Page/Data%20File/All%20Pc/gridviewbilder_pc.dart';
import 'package:super_tech/All%20Page/Data%20File/SSD%20Card/gridviewbilder_pc.dart';
import 'package:super_tech/All%20Page/Data%20File/splash_screen.dart';
import 'package:super_tech/All%20Page/Test%20Pages/registation.dart';
import 'package:url_launcher/url_launcher.dart';
class Main_Home_Page extends StatefulWidget {
  const Main_Home_Page({Key? key}) : super(key: key);

  @override
  _Main_Home_PageState createState() => _Main_Home_PageState();
}

class _Main_Home_PageState extends State<Main_Home_Page> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context,
  //       MaterialPageRoute(builder: (context)=>Logo_Play()))
  //   );
  // }
  showExitPopup(){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text('SuperTech'),
            content: Text('Dou you wint to exit'),
            actions: <Widget>[
              RaisedButton(
                  color: Colors.white,
                  child: Text('No'
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                  }
              ),
              RaisedButton(
                  color: Colors.white,
                  child: Text('Yes'
                  ),
                  onPressed: (){
                    SystemNavigator.pop();
                  }
              ),
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>showExitPopup(),
      child: Scaffold(
        backgroundColor: Colors.white12,
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
        drawer: Drawer(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index){
                return Column(
                  children: [



                    Container(

                      child: ListTile(
                        title: Text(
                            index==0?
                            "Laptop"
                                :index==1?
                            "Desktop"
                                :index==2?
                            "Component"
                                :index==3?
                            "SSD Card"
                                :index==4?
                            "UPS"
                                :index==5?
                            "Tablet"
                                :index==6?
                            "Office Equipment"
                                :index==7?
                            " Camera"
                                :index==7?
                            "Security"
                                :index==8?
                            "Networking"
                                :index==9?
                            "Accessories"
                                :index==10?
                            "Software"
                                :index==11?
                            "Server & Storage"
                                :index==12?
                            "TV"
                                :index==13?
                            "AC"
                                :index==14?
                            " Gadget"
                                :"Gaming"
                        ),
                        onTap: (){
                          if(index==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder()));
                          }
                          else if (index==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Pc()));
                          }
                          else if (index==3){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Ssd()));
                          }
                          else if (index==4){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Pc()));
                          }
                          else if (index==5){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Ssd()));
                          }
                          else if(index==6){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder()));
                          }
                          else if(index==7){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder()));
                          }
                          else if (index==8){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Pc()));
                          }
                          else if (index==9){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Ssd()));
                          }
                          else if (index==10){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Pc()));
                          }
                          else if (index==11){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Ssd()));
                          }
                          else if(index==12){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder()));
                          }
                        },
                        trailing: Icon(Icons.add),
                      ),


                    ),


                    Divider(),
                  ],
                );
              }),
        ),
        bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Colors.green,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegistation()));
                    },
                    child: Icon(Icons.wallet_giftcard,size: 15,)),
                title: Text("Offer",style: TextStyle(fontSize: 10,color: Colors.white),)),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegistation()));
                    },
                    child: Icon(Icons.landscape,size: 15,)),
                title: Text("Winter Sale",style: TextStyle(fontSize: 10),)),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegistation()));
                    },
                    child: Icon(Icons.airplay_sharp,size: 15,)),
                title: Text("PC Builder",style: TextStyle(fontSize: 10),)),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegistation()));
                    },
                    child: Icon(Icons.create,size: 15,)),
                title: Text("Compare (0)",style: TextStyle(fontSize: 10),)),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegistation()));
                  },
                    child: Icon(Icons.account_circle,size: 15,)),
                title: Text("Account",style: TextStyle(fontSize: 10),)),
          ],
        ),
        body: (
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: ListView(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                              height: 200,
                              autoPlay: true,
                              autoPlayAnimationDuration: Duration(milliseconds: 200),
                              viewportFraction: 1.00
                          ), items: [

                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Images/Home top Picture/05.jpg"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Images/Home top Picture/02.jpg"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Images/Home top Picture/01.jpg"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Images/Home top Picture/04.jpg"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Images/Home top Picture/03.jpg"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),

                        ],)
                      ],
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffF3D068E4),
                      boxShadow: [
                      BoxShadow(
                          color: Color(0xffF3D068E4),
                          spreadRadius: 2,
                          blurRadius: 2,
                        ),
                      ]
                    ),
                    child: Column(
                      children: [
                        Text("Compare Products",style: TextStyle(fontSize: 15),),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                      filled: true,
                                icon: Icon(Icons.search,size: 30,color: Colors.black, ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.black)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.white)),
                                hintText: "Search and select Product",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text("Notice: .......................",style: TextStyle(color: Colors.white,fontSize: 16),),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Text("Featured Category",style: TextStyle(fontSize: 16,color: Colors.white)),
                              SizedBox(height: 10,),
                              Text("Get Your Desired Product from Featured Category!",style: TextStyle(fontSize: 12,color: Colors.white)),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder()));
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                    borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 90,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                          image: AssetImage("Images/Catagory Icons/01.jpg"),
                                                          fit: BoxFit.fill
                                                        )
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(5.0),
                                                      child: Center(child: Text("All Laptop",style: TextStyle(fontSize: 12),)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Ssd()));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            image: AssetImage("Images/Catagory Icons/02.png"),
                                                            fit: BoxFit.fill
                                                        )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.0),
                                                    child: Center(child: Text("Desktop",style: TextStyle(fontSize: 12),)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder()));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            image: AssetImage("Images/Catagory Icons/03.jpg"),
                                                            fit: BoxFit.fill
                                                        )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.0),
                                                    child: Center(child: Text("Procesor",style: TextStyle(fontSize: 12),)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Ssd()));
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 90,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          image: DecorationImage(
                                                              image: AssetImage("Images/Catagory Icons/04.png"),
                                                              fit: BoxFit.fill
                                                          )
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(5.0),
                                                      child: Center(child: Text("SSD Card",style: TextStyle(fontSize: 12),)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder()));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            image: AssetImage("Images/Catagory Icons/05.png"),
                                                            fit: BoxFit.fill
                                                        )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.0),
                                                    child: Center(child: Text("Keybord",style: TextStyle(fontSize: 12),)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Pc()));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            image: AssetImage("Images/Catagory Icons/06.png"),
                                                            fit: BoxFit.fill
                                                        )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.0),
                                                    child: Center(child: Text("Mouse",style: TextStyle(fontSize: 12),)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Ssd()));
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 90,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          image: DecorationImage(
                                                              image: AssetImage("Images/Catagory Icons/07.png"),
                                                              fit: BoxFit.fill
                                                          )
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(5.0),
                                                      child: Center(child: Text("Webcame",style: TextStyle(fontSize: 12),)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Pc()));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            image: AssetImage("Images/Catagory Icons/08.png"),
                                                            fit: BoxFit.fill
                                                        )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.0),
                                                    child: Center(child: Text("Pinter",style: TextStyle(fontSize: 12),)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Ssd()));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            image: AssetImage("Images/Catagory Icons/09.jpg"),
                                                            fit: BoxFit.fill
                                                        )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.0),
                                                    child: Center(child: Text("Printer",style: TextStyle(fontSize: 12),)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Pc()));
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 90,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          image: DecorationImage(
                                                              image: AssetImage("Images/Catagory Icons/10.jpg"),
                                                              fit: BoxFit.fill
                                                          )
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(5.0),
                                                      child: Center(child: Text("Router",style: TextStyle(fontSize: 12),)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder_Ssd()));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            image: AssetImage("Images/Catagory Icons/11.png"),
                                                            fit: BoxFit.fill
                                                        )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.0),
                                                    child: Center(child: Text("Projector",style: TextStyle(fontSize: 12),)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview_Bulder()));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 90,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            image: AssetImage("Images/Catagory Icons/12.png"),
                                                            fit: BoxFit.fill
                                                        )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.0),
                                                    child: Center(child: Text("Gadget",style: TextStyle(fontSize: 12),)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                  child: Container(
//product name
                    child: Text(
                      """Best Desktop PC Shop in Bangladesh""",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
//product long discription
                            child: Text(
                              """Desktop PCs are a vital part of any workspace or gaming setup. It does not matter if you are an entry-level, mid-level, or high-performance user. If you will be using your PC to run the resource-demanding apps consistently, then Desktop PC is the best solution. You can easily buy your desired Brand PC, Portable mini PC, All-In-One PC, Apple Mac mini or iMac PC, or any budget pc. You can get your new Intel Desktop PC, AMD Desktop PC, or custom Desktop PC very easily with the PC builder feature from our E-commerce website or any of our shops. If you are a gamer or professional content creator then you can enhance your productivity with our collections of hi-end gaming and rendering PCs.""",
                              style: TextStyle(fontSize: 16,color: Colors.white70),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                    child: Text(
                        "SUPPORT",
                        style: TextStyle(fontSize: 16,color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: InkWell(
                          onTap: (){
                            launch("tel://+8801725-171605");
                          },
                          child: Container(
                            child: ListTile(
                              leading: Icon(Icons.call,size: 30,color: Colors.black,),
                              subtitle: Text("9AM-7PM"),
                              title: Text("+8801725-171605",style: TextStyle(color: Colors.red),),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: InkWell(
                          onTap: (){
                            launch("https://www.google.com.bd/maps/place/Riyad+Departmental+Store/@24.8244709,89.3801417,20.5z/data=!4m8!1m2!2m1!1spolish+lince+school+and+college,+3+no+gaite!3m4!1s0x39fc54bdec39fe83:0xe215dafc9ff3c756!8m2!3d24.8246338!4d89.3803021?hl=en");
                          },
                          child: Container(
                            child: ListTile(
                              leading: Icon(Icons.location_on,size: 30,color: Colors.black,),
                              subtitle: Text("Stor Locator"),
                              title: Text("Find Our Stores",style: TextStyle(color: Colors.red),),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text("ABOUT US",style: TextStyle(fontSize:14,color: Colors.white),),
                          Text("◘EMI Terms ◘About Us ◘Online Delivery ",style: TextStyle(fontSize: 16,color: Colors.white70)),
                          Text("◘Privacy Policy ◘Terms and condition",style: TextStyle(fontSize: 16,color: Colors.white70)),
                          Text("◘Contact ◘Brands",style: TextStyle(fontSize: 16,color: Colors.white70)),
                          Text("SuperTech & Engineering Ltd",style: TextStyle(fontSize: 20,color: Colors.red)),
                          Text("Lotifpur, Koloni 6th Floor,12 Riyad Plaza",style: TextStyle(fontSize: 16,color: Colors.white70)),
                          Text("Kolony, Bogura",style: TextStyle(fontSize: 16,color: Colors.white70)),
                          Text("Email;",style: TextStyle(fontSize: 16,color: Colors.white70)),
                          Text("supertech@gmail.com",style: TextStyle(fontSize: 16,color: Colors.white70),),



                          Container(
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    launch("https://www.facebook.com/groups/2697443610524385");
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Icon(Icons.facebook,size: 30,color: Colors.white,),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    launch("https://www.youtube.com/channel/UCIZlOARmrLl67RWj5dNskPQ");
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Icon(Icons.linked_camera_outlined,size: 30,color: Colors.white,),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    launch("https://www.google.com.bd/maps/@24.8245021,89.3801753,17.25z?hl=en");
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Icon(Icons.location_on,size: 30,color: Colors.white,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 85,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Text("2022 SuperTech & Engineering Ltd || All rights reserved",style: TextStyle(fontSize:12,color: Colors.white),),
                                    Container(child: Text("Powered By SuperTech ",style: TextStyle(fontSize: 16,color: Colors.red))),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )

        ),
      ),
    );
  }
}
