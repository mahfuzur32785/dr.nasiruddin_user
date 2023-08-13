import 'package:doc_app/custom_btmnbar/common_btmnbar.dart';
import 'package:doc_app/drawer_section/drawer_menu.dart';
import 'package:doc_app/screen/auth/login_screen.dart';
import 'package:doc_app/screen/update_patient_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          "Patients Profile",
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
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.white70,
                  Colors.blue.shade50,
                ],
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 16.0,
                    child:  IconButton(
                      icon: const Icon(Icons.arrow_forward,size: 18,color: Colors.black,),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdatePatientProfile()));
                      },
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 2.0),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 70,
                      child: Image.asset("images/psnt.png",fit: BoxFit.cover,),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Patient Name',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Iftikar Islam Atiq'),
                  ],
                ),
                SizedBox(height: 15.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Age',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('24 Years old'),
                  ],
                ),
                SizedBox(height: 15.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sex',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Male'),
                  ],
                ),
                SizedBox(height: 15.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Address',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Mohammadpur Dhaka-1207'),
                  ],
                ),
                SizedBox(height: 15.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Date of Birth',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('2000-03-07'),
                  ],
                ),
                SizedBox(height: 15.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nationality',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Bangladeshi'),
                  ],
                ),
                SizedBox(height: 15.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Religion',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Islam'),
                  ],
                ),
                SizedBox(height: 15.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Marital Status',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Single'),
                  ],
                ),
                SizedBox(height: 15.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Admission Date',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    //SizedBox(width: 10.0,),
                    Text('2023-08-10'),
                  ],
                ),
                SizedBox(height: 15.0,),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Admission Time',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    //SizedBox(width: 10.0,),
                    Text('9:00pm'),
                  ],
                ),
                SizedBox(height: 15.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Final Diagnosis',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                   //SizedBox(width: 10.0,),
                    Text('Heartless'),
                  ],
                ),
                // SizedBox(height: 25.0,),
                // SizedBox(
                //   width: double.infinity,
                //   height: 45.0,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.cyanAccent.shade700,
                //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
                //     ),
                //     child: Text('Update',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.black),),
                //     onPressed: (){},
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CommonBtmNbBar(),
    );
  }
}
