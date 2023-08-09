import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {

  bool pendingSelect = true;
  bool confirmSelect = false;
  bool completeSelect = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  Container(
                    color: const Color(0xffaec2e3),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Schedule",style: TextStyle(
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

                  const SizedBox(height: 10,),

                  /// TWO BUTTON
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3, horizontal: 5),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30)),
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
                          padding: const EdgeInsets.only(bottom: 100,left: 10,right: 10),
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Container(
                                height: 140,
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
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
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 10,);
                            },
                            itemCount: 5,),
                        );
                      }
                      else if(confirmSelect == true){
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 100,left: 10,right: 10),
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Container(
                                height: 140,
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
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
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 10,);
                            },
                            itemCount: 5,),
                        );
                      }
                      else if(completeSelect == true){
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 100,left: 10,right: 10),
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Container(
                                height: 140,
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
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
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 10,);
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
    );
  }
}
