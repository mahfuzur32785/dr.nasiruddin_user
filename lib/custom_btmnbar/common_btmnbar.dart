import 'package:doc_app/screen/contact_screen.dart';
import 'package:doc_app/screen/home_page.dart';
import 'package:doc_app/screen/profile_screen.dart';
import 'package:doc_app/screen/schedule_screen.dart';
import 'package:flutter/material.dart';

class CommonBtmNbBar extends StatefulWidget {
  const CommonBtmNbBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CommonBtmNbBar> createState() => _CommonBtmNbBarState();
}

class _CommonBtmNbBarState extends State<CommonBtmNbBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60.0,
      //color:Colors.white,
      color:Colors.indigoAccent.shade100,
      child: Row(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
          onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>HomePage(),
              ));
        },
            child:  Column(
              children: [
                Icon(Icons.home, size: 18.0, color:
                Colors.white,),
                Text(
                  "Home",
                  style:TextStyle(
                      color: Colors.white,
                      fontSize: 12.0, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScheduleScreen(),
                  ));
            },
            child: const Column(
              children: [
                Icon(Icons.calendar_month, size: 18.0,color: Colors.white,),
                Text(
                  "Schedule",
                  style: TextStyle(
                      fontSize: 12.0,color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          GestureDetector(
             onTap: () {
            Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ContactScreen(),
            ));
      },
            child: const Column(
              children: [
                Icon(Icons.contact_page, size: 18.0,color: Colors.white,),
                Text(
                  "Contact",
                  style: TextStyle(
                      fontSize: 12.0,color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>ProfileScreen(),
            ));
      },
            child: const Column(
              children: [
                Icon(Icons.person, size: 18.0,color: Colors.white,),
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 12.0,color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}