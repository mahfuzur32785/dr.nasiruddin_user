import 'package:doc_app/main_widget_pages/archive_schedule.dart';
import 'package:doc_app/main_widget_pages/chember_info.dart';
import 'package:doc_app/main_widget_pages/confirm_schedule.dart';
import 'package:doc_app/main_widget_pages/contact_info.dart';
import 'package:doc_app/main_widget_pages/pending_schedule.dart';
import 'package:doc_app/main_widget_pages/personal_info.dart';
import 'package:doc_app/main_widget_pages/professional_info.dart';
import 'package:doc_app/screen/create_appoinment.dart';
import 'package:doc_app/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   actions: [
          //     IconButton(onPressed: () {
          //
          //     }, icon: Icon(Icons.notifications_none_sharp)),
          //   ]
          // ),

          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bg.png'),
                    fit: BoxFit.cover,
                  ),
              ),
              child: Column(
                children: [
                  /// Top Row ICON
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Visibility(
                          visible: false,
                          child: IconButton(onPressed: () {

                          }, icon: const Icon(Icons.menu)),
                        ),
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.all(10),
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
                              right: 18,
                              top: 15,
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
                        )
                      ],
                    ),
                  ),

                  /// Doctor Image
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome to!\nDr. Nasiruddin",style: GoogleFonts.roboto(
                              fontSize: 20,height: 0,fontWeight: FontWeight.w900,
                            ),),
                            const SizedBox(height: 10,),
                        Text("How is it going today?",style: GoogleFonts.abhayaLibre(
                              fontSize: 16,height: 0,fontWeight: FontWeight.w400,
                            ),),
                            const SizedBox(height: 10,),
                            SizedBox(
                              // height: 40,
                              child: ElevatedButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)
                                => const CreateAppointment(),));
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                                backgroundColor: Colors.orange,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ),
                              ), child:  SizedBox(
                                child: Text(
                                  "Get Appointment",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                  fontSize: 14,color: Colors.white,
                                    fontWeight: FontWeight.w900
                                ),),
                              ),
                              ),
                            ),

                          ],
                        ),),
                        const Expanded(child: Align(
                          alignment: Alignment.centerRight,
                          child: Image(
                            image: AssetImage('images/dr.png'),
                            height: 200,
                            fit: BoxFit.fitHeight,
                          ),
                        ),)
                      ],
                    ),
                  ),

                  ///IN Round Features
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.blue.shade100,
                              Colors.red.shade50,
                            ],
                          ),
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)
                        )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Text("My Services",style: TextStyle(
                          //   fontWeight: FontWeight.bold, fontSize: 16
                          // ),),
                          // const SizedBox(height: 10,),
                          Expanded(child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 105,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 5,
                              ),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    index==0?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PendingSchedule())):
                                    index==1?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ConfirmSchedule())):
                                    index==2?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ArchiveSchedule())):
                                    index==3?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfessionalInfo())):
                                    index==4?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PersonalInfo())):
                                    index==5?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChemberInfo())):
                                    index==6?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactInfo())):Container();
                                  },
                                  child: Card(
                                    elevation: 5.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        //color: Colors.grey.shade200,
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.topRight,
                                          colors: [
                                            Colors.red.shade50,
                                            Colors.blue.shade200,
                                          ],
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image(image: AssetImage("${servicesList[index]["image"]}"),height: 30,),
                                          SizedBox(height: 10.0,),
                                          Text("${servicesList[index]["name"]}",style: GoogleFonts.aboreto(fontSize: 10.0,fontWeight: FontWeight.w900),)
                                        ],
                                      )
                                    ),
                                  ),
                                );
                              },
                            itemCount: servicesList.length,
                          ),
                          ),
                          const SizedBox(height: 70,),
                        ],
                      ),
                  ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
