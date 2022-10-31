import 'package:flutter/material.dart';
class Drawer_Class extends StatefulWidget {
  const Drawer_Class({Key? key}) : super(key: key);

  @override
  _Drawer_ClassState createState() => _Drawer_ClassState();
}

class _Drawer_ClassState extends State<Drawer_Class> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Drower"),),
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
                            "All Pc"
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Text("Hello index 0")));
                          }
                          else if (index==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Text("Hello index 1")));
                          }
                        },

                        trailing: Icon(Icons.add),
                      ),


                    ),


                    Divider(),
                  ],
                );
              }),

          // ListView(
          //   children: [
          //
          //     UserAccountsDrawerHeader(
          //
          //         currentAccountPicture: CircleAvatar(
          //
          //           backgroundImage: AssetImage(""),
          //         ),
          //         accountName: Text("Fiorj Hossain Shakil"), accountEmail: Text("mdfiorjhossain.cse@gmail.com")),
          //     ListTile(
          //       title: Text("App Developer"),
          //       subtitle: Text("Android App Developer "),
          //     )
          //   ],
          // ),






        ),
      ),
    );
  }
}
