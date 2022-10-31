import 'package:flutter/material.dart';
import 'package:super_tech/All%20Page/Data%20File/All%20Laptop/all_data.dart';
import 'package:super_tech/All%20Page/Data%20File/All%20Laptop/product.dart';
class Gridview_Bulder extends StatefulWidget {
  const Gridview_Bulder({Key? key}) : super(key: key);

  @override
  _Gridview_BulderState createState() => _Gridview_BulderState();
}

class _Gridview_BulderState extends State<Gridview_Bulder> {
  List<DetailsOfUser> userdata = UserData.dataOfUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cholonbil Shop", style: TextStyle(fontSize: 20),)),
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
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            mainAxisExtent: 220,
          ),
          itemCount: 20,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Oridyct_View(detailsOfUser:userdata[index],)));
              },

              child: Container(



                child: Container(
                  margin: EdgeInsets.all(10),

                  decoration: BoxDecoration(
                      color: Colors.blueAccent,

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(userdata[index].userImage1),
                        fit: BoxFit.fill,
                      )


                  ),

                  child: Column(
                    // alignment: Alignment.center,
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: MediaQuery.of(context).size.height,

                        child: Text(userdata[index].userName,maxLines: 1,style: TextStyle(fontSize: 12),),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: MediaQuery.of(context).size.height,

                        child: Text(userdata[index].userLongDescription,maxLines: 1,),
                      ),

                    ],
                  ),
                ),
              ),
            );

          }),



    );

  }
}
