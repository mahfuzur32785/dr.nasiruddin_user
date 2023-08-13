import 'package:doc_app/custom_btmnbar/common_btmnbar.dart';
import 'package:doc_app/drawer_section/drawer_menu.dart';
import 'package:doc_app/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  bool pendingSelect = true;
  bool confirmSelect = false;
  bool completeSelect = false;

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
          "Schedule",
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Colors.red.shade50,
                Colors.blue.shade200,
              ],
            )
        ),
        child: SafeArea(
          child: CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                  ),
                  child: Column(
                    children: [
                      /// Top Row ICON
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,right: 10.0),
                        child: Align(
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
                      ),

                      const SizedBox(height: 10,),

                      /// TWO BUTTON
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 5),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.blue.shade200,
                                Colors.red.shade50,
                              ],
                            ),
                            //color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(30)
                      ),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    pendingSelect = true;
                                    confirmSelect = false;
                                    completeSelect = false;
                                  });
                                },
                                child: Container(
                                  height: 48,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: pendingSelect
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                    // border: Border.all(color: Colors.grey.shade300),
                                  ),
                                  child: Text("Pending",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: pendingSelect
                                            ? Colors.black
                                            : Colors.grey.shade700,
                                      )),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    pendingSelect = false;
                                    confirmSelect = true;
                                    completeSelect = false;
                                  });
                                },
                                child: Container(
                                  height: 48,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: confirmSelect
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                    // border: Border.all(color: Colors.grey.shade300),
                                  ),
                                  child: Text("Confirm",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: confirmSelect
                                            ? Colors.black
                                            : Colors.grey.shade700,
                                      )),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    pendingSelect = false;
                                    confirmSelect = false;
                                    completeSelect = true;
                                  });
                                },
                                child: Container(
                                  height: 48,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: completeSelect
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                    // border: Border.all(color: Colors.grey.shade300),
                                  ),
                                  child: Text("Complete",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: completeSelect
                                            ? Colors.black
                                            : Colors.grey.shade700,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10,),

                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                          if(pendingSelect == true){
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
                                            Colors.blue.shade200,
                                            Colors.red.shade50,
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
                                            color: const Color(0xFFF0A732),
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
                          }
                          else if(confirmSelect == true){
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
                                            color: Colors.greenAccent.shade700,
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
                                  return const SizedBox(height: 5.0,);
                                },
                                itemCount: 5,),
                            );
                          }
                          else if(completeSelect == true){
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
                                            Colors.blue.shade200,
                                            Colors.red.shade50,
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
                                            color: Colors.green.shade600,
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
                                  return const SizedBox(height: 5.0,);
                                },
                                itemCount: 5,),
                            );
                          }
                          else{
                            return const SizedBox();
                          }
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
      ),
      bottomSheet: CommonBtmNbBar(),
    );
  }
}
