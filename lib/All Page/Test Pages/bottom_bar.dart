// import 'dart:html';
//
// import 'package:flutter/material.dart';
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   var currenindex=0;
//   final pages=[
//     Page0(),
//     Page0(),
//     Page0(),
//     Page0(),
//     Page0(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Drower"),),
//         drawer: Drawer(
//           child: ListView.builder(
//               itemCount: 10,
//               itemBuilder: (context, index){
//                 return Column(
//                   children: [
//
//
//
//                     Container(
//
//                       child: ListTile(
//                         title: Text(
//                             index==0?
//                             "Laptop"
//                                 :index==1?
//                             "Desktop"
//                                 :index==2?
//                             "Component"
//                                 :index==3?
//                             "All Pc"
//                                 :index==4?
//                             "UPS"
//                                 :index==5?
//                             "Tablet"
//                                 :index==6?
//                             "Office Equipment"
//                                 :index==7?
//                             " Camera"
//                                 :index==7?
//                             "Security"
//                                 :index==8?
//                             "Networking"
//                                 :index==9?
//                             "Accessories"
//                                 :index==10?
//                             "Software"
//                                 :index==11?
//                             "Server & Storage"
//                                 :index==12?
//                             "TV"
//                                 :index==13?
//                             "AC"
//                                 :index==14?
//                             " Gadget"
//                                 :"Gaming"
//
//
//                         ),
//                         onTap: (){
//                           if(index==0){
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Text("Hello index 0")));
//                           }
//                           else if (index==1){
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Text("Hello index 1")));
//                           }
//                         },
//
//                         trailing: Icon(Icons.add),
//                       ),
//
//
//                     ),
//
//
//                     Divider(),
//                   ],
//                 );
//               }),
//
//               // ListView(
//               //   children: [
//               //
//               //     UserAccountsDrawerHeader(
//               //
//               //         currentAccountPicture: CircleAvatar(
//               //
//               //           backgroundImage: AssetImage(""),
//               //         ),
//               //         accountName: Text("Fiorj Hossain Shakil"), accountEmail: Text("mdfiorjhossain.cse@gmail.com")),
//               //     ListTile(
//               //       title: Text("App Developer"),
//               //       subtitle: Text("Android App Developer "),
//               //     )
//               //   ],
//               // ),
//
//
//
//
//
//
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//
//           backgroundColor: Colors.green,
//           currentIndex: currenindex,
//           items: [
//             // BottomNavigationBarItem(
//             //     icon: Icon(Icons.home),
//             // title: Text("Home")),
//             BottomNavigationBarItem(
//                 backgroundColor: Colors.black,
//                 icon: Icon(Icons.baby_changing_station,size: 15,),
//                 title: Text("Home",style: TextStyle(fontSize: 10,color: Colors.white),)),
//             BottomNavigationBarItem(
//                 backgroundColor: Colors.black,
//                 icon: Icon(Icons.baby_changing_station,size: 15,),
//                 title: Text("Home",style: TextStyle(fontSize: 10),)),
//             BottomNavigationBarItem(
//                 backgroundColor: Colors.black,
//                 icon: Icon(Icons.baby_changing_station,size: 15,),
//                 title: Text("Home",style: TextStyle(fontSize: 10),)),
//             BottomNavigationBarItem(
//                 backgroundColor: Colors.black,
//                 icon: Icon(Icons.baby_changing_station,size: 15,),
//                 title: Text("Home",style: TextStyle(fontSize: 10),)),
//             BottomNavigationBarItem(
//                 backgroundColor: Colors.black,
//                 icon: Icon(Icons.baby_changing_station,size: 15,),
//                 title: Text("Home",style: TextStyle(fontSize: 10),)),
//
//           ],
          // onTap: (index){
          //   setState(() {
          //     currenindex=index;
          //   });
          // },
        // ),
//         body: Container(
//           color: Colors.yellow,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//
//                 Scaffold(
//                   body:
//                   pages[currenindex],
//                 ),
//
//                 Container(
//                   child: Column(
//
//                   ),
//                 ),
//                 TextButton(onPressed: (){
//
//                 }, child: Text("Alart")),
//                 RaisedButton(
//                   onPressed: (){
//                     showDialog(context: context,
//                         builder: (context){
//                           return Dialog(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)
//                             ),
//                             child: Container(
//                               height: 200,
//                               child: Padding(
//                                 padding: EdgeInsets.all(12.0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     TextField(
//                                       decoration: InputDecoration(
//                                           border: InputBorder.none,
//                                           hintText: "Hello alart"
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         });
//                   },
//                   child: Text("Confrom"),
//
//                 )
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
