import 'package:doc_app/custom_btmnbar/common_btmnbar.dart';
import 'package:doc_app/drawer_section/drawer_menu.dart';
import 'package:doc_app/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';

class ArchiveSchedule extends StatefulWidget {
  const ArchiveSchedule({super.key});

  @override
  State<ArchiveSchedule> createState() => _ArchiveScheduleState();
}

class _ArchiveScheduleState extends State<ArchiveSchedule> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          "Archive Schedule",
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
        child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height,
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
                  children: [
                    /// Top Row ICON
                    Container(
                      //color: const Color(0xffaec2e3),
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
                            // const Text("Archive Schedule",style: TextStyle(
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
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 150,left: 10,right: 10),
                            child: ListView.separated(
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 5.0,
                                  child: Container(
                                    height: 140,
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.topRight,
                                          colors: [
                                            Colors.red.shade50,
                                            Colors.blue.shade200,
                                          ],
                                        ),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey),
                                      boxShadow: [

                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(right: 10),
                                          width: 6,
                                          height: double.infinity,
                                          color:  Colors.pinkAccent.shade100,
                                        ),
                                        const Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('Apomoinment Date'),
                                                      SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined,size: 18,),
                                                          SizedBox(width: 5),
                                                          Text("Wed Jun 23 - 08:00-08:30 AM")
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Icon(Icons.more_vert),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(vertical: 5),
                                                child: Divider(),
                                              ),
                                              Row(
                                                children: [
                                                  CircleAvatar(radius: 20,backgroundImage: AssetImage('images/dr.png'),),
                                                  SizedBox(width: 10,),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Faruk Hossain",style: TextStyle(fontWeight: FontWeight.bold),),
                                                      Text("Regular Checkup"),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(height: 5,);
                              },
                              itemCount: 5,),
                          );
                        },
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CommonBtmNbBar(),
    );
  }
}
