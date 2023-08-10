import 'package:flutter/material.dart';

class ProfessionalInfo extends StatefulWidget {
  const ProfessionalInfo({super.key});

  @override
  State<ProfessionalInfo> createState() => _ProfessionalInfoState();
}

class _ProfessionalInfoState extends State<ProfessionalInfo> {
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
      //     "Professional Information",
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
        padding: EdgeInsets.only(top: 24.0,),
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
                      const Text("Professional Information",style: TextStyle(
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
             Container(
               padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Row(
                       children: [
                         CircleAvatar(
                           radius: 60.0,
                           backgroundImage: NetworkImage("https://1.bp.blogspot.com/-rrb3s2u5SPo/XZw1xPCyX7I/AAAAAAAABfY/ErdSVUL57NkD2NBAl2YsZ95JvXJhBT85wCLcBGAsYHQ/s1600/Prof.%2Bdr.%2BNasir%2BUddin.jpg"),
                         ),
                         SizedBox(width: 20.0,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Dr.Nasir Uddin",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600),),
                             Text("Surgeon,Cardiologist",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),),
                             SizedBox(height: 5.0,),
                             Text("Followship(Dental Surgeon)",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),
                             SizedBox(height: 5.0,),
                             Text("MS(Medicine),FCPS,MBBS",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),
                           ],),
                       ],
                     ),
                     SizedBox(height: 20.0,),
                     const Column(
                       children: [
                         Row(
                           children: [
                             Text("EXPERIANCE     :",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
                             SizedBox(width: 10.0,),
                             Text("19 Years",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400),),
                           ],
                         ),
                         SizedBox(height: 5.0,),
                         Row(
                           children: [
                             Text("LANGUAGES     :",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
                             SizedBox(width: 10.0,),
                             Text("English & Bangla",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400),),
                           ],
                         ),
                         SizedBox(height: 5.0,),
                         Row(
                           children: [
                             Text("TYPES OF          :",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
                             SizedBox(width: 10.0,),
                             Text("Surgeon",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400),),
                           ],
                         ),
                       ],),
                     SizedBox(height: 15.0,),
                     const Divider(thickness: 1.0,color: Colors.black26,),
                     const Text("SPECIALITY :",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
                     Container(
                       height: 130.0,
                       width: double.infinity,
                       //color: Colors.pink.shade50,
                       child:GridView.builder(
                         // physics: NeverScrollableScrollPhysics(),
                           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 2,
                               crossAxisSpacing: 5.0,
                               mainAxisSpacing: 5.0,
                               childAspectRatio: 9/2
                           ),
                           itemCount: 6,
                           itemBuilder: (BuildContext context, int index) {
                             return Card(
                               elevation: 10.0,
                               color: Colors.white,
                               child: Container(
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(5.0),
                                       gradient: LinearGradient(
                                         begin: Alignment.topLeft,
                                         end: Alignment.topRight,
                                         colors: [
                                           Colors.red.shade50,
                                           Colors.blue.shade200,
                                         ],
                                       )
                                   ),
                                   child: Center(
                                       child:index==0? Text("Dentisty"):
                                       index==1? Text("Surgery"):
                                       index==2? Text("Implantology"):
                                       index==3?Text("Orthopedic"):
                                       index==4?Text("Paediatric"):
                                       Text("Biologisttic"))
                               ),
                             );
                           }
                       ),
                     ),
                     SizedBox(height: 15.0,),
                     const Text("CONTACT :",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
                     Card(
                       elevation: 10.0,
                       child: Container(
                         height: 40.0,
                         width: 200.0,
                         padding: EdgeInsets.symmetric(horizontal: 10.0),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5.0),
                             gradient: LinearGradient(
                               begin: Alignment.topLeft,
                               end: Alignment.topRight,
                               colors: [
                                 Colors.red.shade50,
                                 Colors.blue.shade200,
                               ],
                             )
                         ),
                         child: const Row(children: [
                           Icon(Icons.phone,color: Colors.black,size: 18.0,),
                           SizedBox(width: 10.0,),
                           Text("+8801700528548",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
                         ]),
                       ),
                     ),
                     SizedBox(height: 10.0,),
                     Row(
                       children: [
                         Container(
                           height: 50.0,
                           width: 2.0,
                           color:  Colors.black38,
                         ),
                         SizedBox(width: 10.0,),
                         const Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("dr.nasiruddin@gmail.com",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black38),),
                             Text("Address here,Mirpur-10,Shah Ali Plaza",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: Colors.black38),),
                           ],)
                       ],
                     )

                   ]),
             ),
            ]),
      ),
      // bottomNavigationBar: CommonBtmNbBar(),
    );
  }
}
