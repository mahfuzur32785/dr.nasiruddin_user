import 'package:doc_app/main_widget_pages/chember_info.dart';
import 'package:doc_app/main_widget_pages/contact_info.dart';
import 'package:doc_app/main_widget_pages/personal_info.dart';
import 'package:doc_app/main_widget_pages/professional_info.dart';
import 'package:doc_app/screen/create_appoinment.dart';
import 'package:doc_app/utils/const.dart';
import 'package:flutter/material.dart';

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
                            const Text("Wellcome to!\nDr. Nasiruddin",style: TextStyle(
                              fontSize: 20,height: 0,fontWeight: FontWeight.w900,
                            ),),
                            const SizedBox(height: 10,),
                            const Text("How is it going today?"),
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
                              ), child: const SizedBox(
                                child: Text(
                                  "Get Appointment",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                  fontSize: 14,color: Colors.white,
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
                      decoration: const BoxDecoration(
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
                                mainAxisExtent: 100,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 15,
                              ),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    index==3?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfessionalInfo())):
                                    index==4?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PersonalInfo())):
                                    index==5?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChemberInfo())):
                                    index==6?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactInfo())):Container();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image(image: AssetImage("${servicesList[index]["image"]}"),height: 40,),
                                        Text("${servicesList[index]["name"]}")
                                      ],
                                    )
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
