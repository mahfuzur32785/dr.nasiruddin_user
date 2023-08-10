import 'package:flutter/material.dart';

class ConfirmSchedule extends StatefulWidget {
  const ConfirmSchedule({super.key});

  @override
  State<ConfirmSchedule> createState() => _ConfirmScheduleState();
}

class _ConfirmScheduleState extends State<ConfirmSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Colors.red.shade50,
                        Colors.blue.shade200,
                      ],
                    ),
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
                            const Text("Confirm Schedule",style: TextStyle(
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
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 30,left: 10,right: 10),
                            child: ListView.separated(
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 5.0,
                                  child: Container(
                                    height: 140,
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          Colors.blue.shade200,
                                          Colors.red.shade50,
                                        ],
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(right: 10),
                                          width: 6,
                                          height: double.infinity,
                                          color:  Colors.green,
                                        ),
                                        Expanded(
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
                                                  GestureDetector(
                                                    onTap: (){

                                                    },
                                                      child: Icon(Icons.more_vert)),
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
    );
  }
}
