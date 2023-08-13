import 'dart:io';

import 'package:doc_app/custom_btmnbar/common_btmnbar.dart';
import 'package:doc_app/drawer_section/drawer_menu.dart';
import 'package:doc_app/screen/auth/login_screen.dart';
import 'package:doc_app/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class UpdatePatientProfile extends StatefulWidget {
  const UpdatePatientProfile({super.key});

  @override
  State<UpdatePatientProfile> createState() => _UpdatePatientProfileState();
}

class _UpdatePatientProfileState extends State<UpdatePatientProfile> {

  String? firstPickedDate;

  void _firstSelectedDate() async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2050));
    if (selectedDate != null) {
      setState(() {
        firstPickedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }
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
          "Update Patients Profile",
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
                  Colors.blue.shade50,
                  Colors.white70,
                ],
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 140,
                    width: 140,
                    child: Stack(
                      children: [
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.black87,
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 16,
                                    offset: const Offset(0, 0)),
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 16,
                                    offset: const Offset(0, 0)),
                              ]),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    if (images == null) {
                                      return Image.network("https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg",height: 110,
                                        width: 110,
                                        fit: BoxFit.cover,);
                                    }
                                    return Image.file(
                                      File(images!.path),
                                      height: 110,
                                      width: 110,
                                      fit: BoxFit.cover,
                                    );
                                  })),
                        ),
                        Positioned(
                            right: 0.0,
                            bottom: 5.0,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black87, width: 1)),
                              child: Material(
                                color: Colors.white,
                                shape: const CircleBorder(),
                                child: InkWell(
                                  onTap: () {
                                    _imageSource = ImageSource.camera;
                                    _getImage();
                                  },
                                  child:  const Icon(Icons.camera_alt_outlined,color: Colors.black87,),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text('Patient Name',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: const TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Enter patient name",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text('Age',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: const TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Enter age",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text('Sex',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: const TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Enter sex",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text('Address',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: const TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Enter address",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Date of Birth",
                        style:
                        TextStyle(
                            color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: 35,
                        child: GestureDetector(
                          onTap: (() {
                            _firstSelectedDate();
                          }),
                          child: TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(top: 10, left: 10),
                              filled: true,
                             // fillColor: Colors.blue[50],
                              suffixIcon: Icon(
                                Icons.calendar_month,
                                color: Colors.black87,
                                size: 18.0,
                              ),
                              border: OutlineInputBorder(
                                 // borderSide: BorderSide.none
                              ),
                              hintText: firstPickedDate == null
                                  ? DateFormat('yyyy-MM-dd')
                                  .format(DateTime.now())
                                  : firstPickedDate,
                              hintStyle: TextStyle(
                                  fontSize: 14, color: Colors.black,fontWeight: FontWeight.w400),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return null;
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text('Nationality',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: const TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Enter nationality",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text('Religion',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: const TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Enter religion",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text('Marital Status',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: const TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Enter marital status",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Admission Date ",
                        style:
                        TextStyle(
                            color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: 35,
                        child: GestureDetector(
                          onTap: (() {
                            _firstSelectedDate();
                          }),
                          child: TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(top: 10, left: 10),
                              filled: true,
                              // fillColor: Colors.blue[50],
                              suffixIcon: Icon(
                                Icons.calendar_month,
                                color: Colors.black87,
                                size: 18.0,
                              ),
                              border: OutlineInputBorder(
                                // borderSide: BorderSide.none
                              ),
                              hintText: firstPickedDate == null
                                  ? DateFormat('yyyy-MM-dd')
                                  .format(DateTime.now())
                                  : firstPickedDate,
                              hintStyle: TextStyle(
                                  fontSize: 14, color: Colors.black,fontWeight: FontWeight.w400),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return null;
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text('Admission Time',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    //SizedBox(width: 10.0,),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: const TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                         // keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Enter admission time",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 4,
                        child: Text('Final Diagnosis',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    //SizedBox(width: 10.0,),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: const TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Final Diagnosis",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                SizedBox(
                  width: double.infinity,
                  height: 45.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyanAccent.shade700,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
                    ),
                    child: const Text('Update',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.black),),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(height: 20.0,),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CommonBtmNbBar(),
    );
  }
  XFile? images;
  ImageSource _imageSource = ImageSource.camera;

  void _getImage() async {
    ImagePicker _picker = ImagePicker();
    images = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }
}
