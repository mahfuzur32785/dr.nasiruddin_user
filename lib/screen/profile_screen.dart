import 'package:doc_app/screen/update_patient_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.blue.shade50,
                  Colors.white70,
                ],
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Patients Profile',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600),),
                    CircleAvatar(
                      backgroundColor: Colors.indigo,
                      maxRadius: 16.0,
                      child:  IconButton(
                        icon: const Icon(Icons.arrow_forward,size: 18,color: Colors.yellowAccent,),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdatePatientProfile()));
                        },
                      ),
                    ),
                  ],
                ),
               Divider(thickness: 1.0,color: Colors.black12,),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Patient Name',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Iftikar Islam Atiq'),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Age',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('24 Years old'),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sex',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Male'),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Address',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Mohammadpur Dhaka-1207'),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Date of Birth',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('07-03-2000'),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nationality',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Bangladeshi'),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Religion',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Islam'),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Marital Status',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Text('Single'),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Admission Date',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    //SizedBox(width: 10.0,),
                    Text('08-08-2023'),
                  ],
                ),
                SizedBox(height: 15.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Admission Time',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                    //SizedBox(width: 10.0,),
                    Text('9:00pm'),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
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
    );
  }
}
