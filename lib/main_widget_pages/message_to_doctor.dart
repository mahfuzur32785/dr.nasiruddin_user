import 'package:doc_app/custom_btmnbar/common_btmnbar.dart';
import 'package:doc_app/drawer_section/drawer_menu.dart';
import 'package:doc_app/screen/auth/login_screen.dart';
import 'package:doc_app/utils/const.dart';
import 'package:flutter/material.dart';

class MessageToDoctor extends StatefulWidget {
  const MessageToDoctor({super.key});

  @override
  State<MessageToDoctor> createState() => _MessageToDoctorState();
}

class _MessageToDoctorState extends State<MessageToDoctor> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final chatController=TextEditingController();
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
          "Message to Doctor",
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
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0,bottom: 80.0),
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
        child: ListView.separated(
        scrollDirection: Axis.vertical,
          itemCount: messageList.length,
          itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: int.parse("${messageList[index]['id']}")%2==0 ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
            Visibility(
              visible: int.parse("${messageList[index]['id']}")%2==0,
              child: CircleAvatar(
                maxRadius: 15.0,
                backgroundColor: Colors.pinkAccent.shade100,
              ),
            ),
              SizedBox(width: 10,),
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                child: Card(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${messageList[index]["name"]}",style: chatTextStyle(),),
                ),),
              ),
              Visibility(
                visible: int.parse("${messageList[index]['id']}")%2!=0,
                child: CircleAvatar(
                  maxRadius: 15.0,
                  backgroundColor: Colors.white,
                ),
              ),
          ],);
        }, separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 10.0,);
        },),
      ),
      bottomSheet: Container(
        height: 50.0,
        width: double.infinity,
        color: Colors.white,
        child: TextField(
          controller: chatController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
            hintText: 'Send a message',
            hintStyle: TextStyle(fontSize: 15.0,color: Colors.grey),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  messageList.add({"id":16,"name":chatController.text});
                  chatController.text='';
                },
                  child: Icon(Icons.send_rounded)),
            )
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),
          onTap: (){},
        ),
      ),
      //bottomNavigationBar: CommonBtmNbBar(),
    );
  }
}
