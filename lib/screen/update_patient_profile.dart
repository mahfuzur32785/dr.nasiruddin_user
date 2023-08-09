import 'dart:io';

import 'package:doc_app/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UpdatePatientProfile extends StatefulWidget {
  const UpdatePatientProfile({super.key});

  @override
  State<UpdatePatientProfile> createState() => _UpdatePatientProfileState();
}

class _UpdatePatientProfileState extends State<UpdatePatientProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(top: 25.0,left: 20.0,right: 20.0),
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
                Align(
                  alignment: Alignment.center,
                    child: Text('Update Patients Profile',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600),)),
                Divider(thickness: 1.0,color: Colors.black12,),
                SizedBox(height: 10.0,),
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
                    Expanded(
                        flex: 4,
                        child: Text('Patient Name',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
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
                    Expanded(
                        flex: 4,
                        child: Text('Age',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
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
                    Expanded(
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
                    Expanded(
                        flex: 4,
                        child: Text('Address',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Text('Date of Birth',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: "Enter date of birth",
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
                    Expanded(
                        flex: 4,
                        child: Text('Nationality',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
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
                    Expanded(
                        flex: 4,
                        child: Text('Religion',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
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
                    Expanded(
                        flex: 4,
                        child: Text('Marital Status',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Text('Admission Date ',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    //SizedBox(width: 10.0,),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                         // keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: "Enter admission date",
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
                    Expanded(
                        flex: 4,
                        child: Text('Admission Time',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    //SizedBox(width: 10.0,),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                         // keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
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
                    Expanded(
                      flex: 4,
                        child: Text('Final Diagnosis',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500),)),
                    //SizedBox(width: 10.0,),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 20-10,
                        child: TextField(
                          style: TextStyle(fontSize: 14.0,color: Colors.black),
                          // controller:
                          // _phoneController, //ei controller e phone number debo then sa
                          //keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
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
                    child: Text('Update',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: Colors.black),),
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
