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
      //     "Personal Information",
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
        padding: EdgeInsets.only(top: 50.0,left: 10.0,right: 10.0),
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
              CircleAvatar(
                backgroundColor: Colors.indigo,
                maxRadius: 16.0,
                child:  IconButton(
                  icon: const Icon(Icons.arrow_back,size: 18,color: Colors.yellowAccent,),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: NetworkImage("https://1.bp.blogspot.com/-rrb3s2u5SPo/XZw1xPCyX7I/AAAAAAAABfY/ErdSVUL57NkD2NBAl2YsZ95JvXJhBT85wCLcBGAsYHQ/s1600/Prof.%2Bdr.%2BNasir%2BUddin.jpg"),
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Text("Name",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 122.0,),
                  Text("Dr.Nasir Uddin"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Gender",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 115.0,),
                  Text("Male / Female"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Date of Birth",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 80.0,),
                  Text("07-03-1982"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Marital Status",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 70.0,),
                  Text("Single / Married"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Blood types",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 85.0,),
                  Text("O+ / A+"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Nationality",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 90.0,),
                  Text("Bangladeshi"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Occupation",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 85.0,),
                  Text("Doctor"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Phone No",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 95.0,),
                  Text("01700252523"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Email Address",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 65.0,),
                  Text("dr.nasiruddin@gmail.com"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Permanent Address",style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(width: 30.0,),
                  Text("Mirpur-10,Shah Ali Plaza"),
                ],
              ),

            ]),
      ),
     // bottomNavigationBar: CommonBtmNbBar(),
    );
  }
}
