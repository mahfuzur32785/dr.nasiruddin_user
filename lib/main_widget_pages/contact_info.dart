import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
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
      //     "Contact Information",
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
        // alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 50.0,left: 10.0,right: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Colors.red.shade50,
                Colors.blue.shade200,
              ],
            )
        ),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo,
                  maxRadius: 16.0,
                  child:  IconButton(
                    icon: const Icon(Icons.arrow_back,size: 18,color: Colors.yellowAccent,),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(height: 30.0,),
                // Container(
                //   height: 120.0,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(15.0),
                //       image: DecorationImage(image: NetworkImage("https://img.freepik.com/premium-vector/stethoscope-icon-design-illustration-health-medicine-logo-template_22857-539.jpg"),fit: BoxFit.cover)
                //   ),
                //   //child: Image.network("https://img.freepik.com/premium-vector/stethoscope-icon-design-illustration-health-medicine-logo-template_22857-539.jpg"),
                // ),
                Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('images/dr.png'),
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(height: 25.0,),
                Row(
                  children: [
                    Text("Name",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),),
                    SizedBox(width: 72.0,),
                    Text("Dr.Nasir Uddin",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                  ],
                ),
                SizedBox(height: 10.0,),
                // This Row is Moblie Number
                Row(
                  children: [
                    Text("Phone",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),),
                    SizedBox(width: 65.0,),
                    Text("+8801819-226460",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),

                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Text("Address",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),),
                    SizedBox(width: 50.0,),
                    Text("Mirpur-10,Shah Ali Plaza",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),

                  ],
                ),
                SizedBox(height: 10.0,),
                // This Row is Moblie Number
                Row(
                  children: [
                    Text("Email",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),),
                    SizedBox(width: 70.0,),
                    Text("dr.nasiruddin@gmail.com",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
                  ],
                ),

              ]),
        ),
      ),
      //bottomNavigationBar: CommonBtmNbBar(),
    );
  }
}
