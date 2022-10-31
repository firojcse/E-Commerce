import 'package:flutter/material.dart';
import 'package:share/share.dart';
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
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            mainAxisExtent: 260,
          ),
          itemCount: 14,
          itemBuilder: (context, index){
            return Scaffold(
              body: Container(
                child: GestureDetector(
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Oridyct_View(detailsOfUser:userdata[index],)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Container(
                          height:170,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage(userdata[index].userImage1),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                        Container(
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          height: 50,
                          width: 250,
                          color: Colors.yellow,
                          child: Text(userdata[index].userName,maxLines:3,),
                        ),
                        Container(padding: const EdgeInsets.only(left: 5),
                          height: 30,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                            child: Row(
                              children: [
                                Text("Price:",style: TextStyle(color: Colors.red)),
                                Text(userdata[index].userPrice,style: TextStyle(color: Colors.red),),
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
