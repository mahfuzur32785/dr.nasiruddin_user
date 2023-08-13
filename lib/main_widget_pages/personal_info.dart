import 'package:doc_app/custom_btmnbar/common_btmnbar.dart';
import 'package:doc_app/drawer_section/drawer_menu.dart';
import 'package:doc_app/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 25,
            )),
        backgroundColor: Colors.indigoAccent.shade100,
        title: Text(
          "Personal Information",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              },
              child: Icon(
                Icons.account_circle,
                size: 30,
                color: Colors.white,
              )),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      drawer: DrawerDemoPage(
        name: "",
        phon: "",
        photo: "",
        addreess: "",
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //padding: EdgeInsets.only(top: 24.0),
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
               // color: const Color(0xffaec2e3),
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
                      // const Text("Personal Information",style: TextStyle(
                      //   fontSize: 18,fontWeight: FontWeight.bold,
                      // ),),
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
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundImage: NetworkImage("https://1.bp.blogspot.com/-rrb3s2u5SPo/XZw1xPCyX7I/AAAAAAAABfY/ErdSVUL57NkD2NBAl2YsZ95JvXJhBT85wCLcBGAsYHQ/s1600/Prof.%2Bdr.%2BNasir%2BUddin.jpg"),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      const Row(
                        children: [
                          Text("Name",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 122.0,),
                          Text("Dr.Nasir Uddin"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          Text("Gender",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 115.0,),
                          Text("Male / Female"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          Text("Date of Birth",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 80.0,),
                          Text("07-03-1982"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          Text("Marital Status",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 70.0,),
                          Text("Single / Married"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          Text("Blood types",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 85.0,),
                          Text("O+ / A+"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          Text("Nationality",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 90.0,),
                          Text("Bangladeshi"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          Text("Occupation",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 85.0,),
                          Text("Doctor"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          Text("Phone No",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 95.0,),
                          Text("01700252523"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          Text("Email Address",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 65.0,),
                          Text("dr.nasiruddin@gmail.com"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      const Row(
                        children: [
                          Text("Permanent Address",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 30.0,),
                          Text("Mirpur-10,Shah Ali Plaza"),
                        ],
                      ),
                    ]),
              ),
            ]),
      ),
      bottomNavigationBar: CommonBtmNbBar(),
    );
  }
}
