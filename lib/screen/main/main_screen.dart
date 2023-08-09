import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:doc_app/screen/create_appoinment.dart';
import 'package:doc_app/screen/home_page.dart';
import 'package:doc_app/screen/main/main_controller.dart';
import 'package:doc_app/screen/message.dart';
import 'package:doc_app/screen/profile_screen.dart';
import 'package:doc_app/screen/schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final _homeController = MainController();
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  List<Widget> pageList = [
    const HomePage(),
    const ScheduleScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
        initialData: 0,
        stream: _homeController.naveListener.stream,
        builder: (context, AsyncSnapshot<int> snapshot) {
          int index = snapshot.data ?? 0;
        return Scaffold(
          extendBody: true,
          key: UniqueKey(),
          body: WillPopScope(
            onWillPop: () => _homeController.onBackPressed(context,index),
            child: UpgradeAlert(
              upgrader: Upgrader(
                dialogStyle: Platform.isIOS ? UpgradeDialogStyle.cupertino : UpgradeDialogStyle.material,
              ),
              child: IndexedStack(
                index: index,
                children: pageList,
              ),
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context)
          //     => const CreateAppointment(),));
          //   },
          //   child: const Icon(Icons.add,color: Color(0xFF2e579d),size: 30,),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          // bottomNavigationBar: AnimatedBottomNavigationBar(
          //   icons: const [Icons.home,Icons.calendar_month, Icons.message, Icons.person],
          //   activeIndex: index,
          //   gapLocation: GapLocation.center,
          //   activeColor: const Color(0xFF2e579d),
          //   inactiveColor: Colors.black54,
          //   notchSmoothness: NotchSmoothness.softEdge,
          //   leftCornerRadius: 32,
          //   rightCornerRadius: 32,
          //   onTap: (index) => setState(() => _homeController.naveListener.sink.add(index)),
          //   //other params
          // ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // Fixed
            backgroundColor: Colors.white, // <-- This works for fixed
            selectedItemColor: Colors.orange,
            elevation: 50 ,
            unselectedItemColor: Colors.black,
            currentIndex: index,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: 'Schedule'),
              BottomNavigationBarItem(icon: Icon(Icons.contact_page),label: 'Contact'),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')
            ],
            onTap: (index) => setState(() => _homeController.naveListener.sink.add(index)),
          ),
        );
      }
    );
  }
}
