import 'package:doc_app/custom_btmnbar/common_btmnbar.dart';
import 'package:doc_app/drawer_section/drawer_menu.dart';
import 'package:doc_app/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
          "Contact Information",
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
        // alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 10.0,right: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Colors.red.shade50,
                Colors.blue.shade200,
              ],
            )
        ),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                        Align(
                          alignment: Alignment.topRight,
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
                        ),
                SizedBox(height: 30.0,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage('images/dr.png'),
                            height: 200,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(height: 25.0,),
                        const Row(
                          children: [
                            Text("Name",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),),
                            SizedBox(width: 72.0,),
                            Text("Dr.Nasir Uddin",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        const Row(
                          children: [
                            Text("Phone",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),),
                            SizedBox(width: 65.0,),
                            Text("+8801819-226460",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),

                          ],
                        ),
                        SizedBox(height: 10.0,),
                        const Row(
                          children: [
                            Text("Address",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),),
                            SizedBox(width: 50.0,),
                            Text("Mirpur-10,Shah Ali Plaza",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),

                          ],
                        ),
                        SizedBox(height: 10.0,),
                        const Row(
                          children: [
                            Text("Email",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),),
                            SizedBox(width: 70.0,),
                            Text("dr.nasiruddin@gmail.com",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                          ],
                        ),

                      ]),),
              ]),
        ),
      ),
      bottomNavigationBar: CommonBtmNbBar(),
    );
  }
}
