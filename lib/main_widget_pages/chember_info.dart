import 'package:flutter/material.dart';

class ChemberInfo extends StatefulWidget {
  const ChemberInfo({super.key});

  @override
  State<ChemberInfo> createState() => _ChemberInfoState();
}

class _ChemberInfoState extends State<ChemberInfo> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: AppBar(
      //   leading: GestureDetector(
      //       onTap: () {
      //         scaffoldKey.currentState?.openDrawer();
      //       },
      //       child: Icon(
      //         Icons.menu,
      //         color: Colors.white,
      //         size: 25,
      //       )),
      //   backgroundColor: Colors.deepPurple.shade900,
      //   title: Text(
      //     "Chember Information",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 22,
      //       fontWeight: FontWeight.w800,
      //     ),
      //   ),
      //   centerTitle: true,
      //   actions: [
      //     GestureDetector(
      //         onTap: () {
      //           // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
      //         },
      //         child: Icon(
      //           Icons.account_circle,
      //           size: 25,
      //           color: Colors.white,
      //         )),
      //     SizedBox(
      //       width: 10.0,
      //     )
      //   ],
      // ),
      // drawer: DrawerDemoPage(
      //   name: "",
      //   phon: "",
      //   photo: "",
      //   addreess: "",
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 24.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Colors.blue.shade200,
                Colors.red.shade50,
              ],
            )
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Top Row ICON
              Container(
                color: const Color(0xffaec2e3),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        maxRadius: 16.0,
                        child:  IconButton(
                          icon: const Icon(Icons.arrow_back,size: 18,color: Colors.black,),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      //SizedBox(width: 10.0,),
                      const Text("Chember Information",style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold,
                      ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: GestureDetector(
                                onTap: () {

                                },
                                child: const Icon(Icons.notifications_none_outlined),
                              ),
                            ),
                            Positioned(
                              right: 8,
                              top: 5,
                              child: Container(
                                height: 6,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: const Text("Professor Dr.Nasir Uddin",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w600,color: Colors.pink),)),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 70.0,
                            backgroundImage: NetworkImage("https://1.bp.blogspot.com/-rrb3s2u5SPo/XZw1xPCyX7I/AAAAAAAABfY/ErdSVUL57NkD2NBAl2YsZ95JvXJhBT85wCLcBGAsYHQ/s1600/Prof.%2Bdr.%2BNasir%2BUddin.jpg"),
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("BDS,MS(OMS)",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w600,color: Colors.black),),
                              Text("Advanced Surgical Training(Japan)",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                              Text("Trained in Facial plastic and\nreconstructive surgery(Canada)",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                              Text("Professor & Head Dept of\nOral and Maxillofacial Surgery.",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                              Text("Shaheed Suhrawardy Medical College\n& Hospital Dhaka,Bangladesh",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                            ],),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      const Text("Dental,Oral and Maxillofacial Surgery Specialist",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.pink),),
                      SizedBox(height: 15.0,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Chember1:",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600,color: Colors.black),),
                              Text("Avenue Dental Care",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.pink),),
                              Text("4/4 Block-D,Latmatia,Satmosjid\nRoad,Dhaka-1207,Bangladesh",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                              Text("Phone : +880-2-9140105\n01819-226460,01819-208670",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                              Text("4pm-7pm\n(Sunday,Wednesday,Thursday)",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                            ],),
                          //SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Chember2:",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600,color: Colors.black),),
                              Text("City Hospital Ltd.",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.pink),),
                              Text("1/8 Block-E,Latmatia,Satmosjid\nRoad,Dhaka-1207,Bangladesh",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                              Text("Tel:01944099099,01819-226460\n01819-208670,02-8143166-7",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                              Text("4pm-7pm\n(Satarday,Tuesday,Thursday)",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                            ],),
                        ],),
                      SizedBox(height: 20.0,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chember3:",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600,color: Colors.black),),
                          Text("Bangladesh ENT Hospital Ltd.",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.pink),),
                          Text("Center For Dental Maxillofacial Surgery and Research",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                          Text("4/1/A Shobhanbag,Mirpur Road,Dhaka-1207",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                          Text("Tel:+8801717250667, +8809666710710[7pm-9pm]",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),),
                        ],),
                    ]),
              ),
            ]),
      ),
      //bottomNavigationBar: CommonBtmNbBar(),
    );
  }
}
