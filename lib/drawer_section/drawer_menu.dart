import 'package:doc_app/drawer_section/custom_list_tile.dart';
import 'package:doc_app/main_widget_pages/archive_schedule.dart';
import 'package:doc_app/main_widget_pages/chember_info.dart';
import 'package:doc_app/main_widget_pages/confirm_schedule.dart';
import 'package:doc_app/main_widget_pages/contact_info.dart';
import 'package:doc_app/main_widget_pages/message_to_doctor.dart';
import 'package:doc_app/main_widget_pages/pending_schedule.dart';
import 'package:doc_app/main_widget_pages/personal_info.dart';
import 'package:doc_app/main_widget_pages/professional_info.dart';
import 'package:doc_app/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerDemoPage extends StatelessWidget {
  DrawerDemoPage({Key? key,required this.addreess,required  this.name,required  this.phon,required  this.photo }) : super(key: key);
  String ? name,phon,photo ,addreess;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            //margin: EdgeInsets.only(top: 20),
            height: 110,
            width: double.infinity,
            color: Colors.indigoAccent.shade100,
            padding: EdgeInsets.only(left: 10.0,top: 15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    // margin: EdgeInsets.only(
                    //   left: 12,
                    //   right: 13,
                    // ),
                    child: CircleAvatar(
                      radius: 35,
                       backgroundImage: NetworkImage("https://1.bp.blogspot.com/-rrb3s2u5SPo/XZw1xPCyX7I/AAAAAAAABfY/ErdSVUL57NkD2NBAl2YsZ95JvXJhBT85wCLcBGAsYHQ/s1600/Prof.%2Bdr.%2BNasir%2BUddin.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ListTile(
                          title: Text(
                           "Dr.Nasir Uddin",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          subtitle: Text(
                            "Dentist Specialist",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
              },
              child: Custom_List_Tile(icon: Icons.home, icon_name: "Home Page")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PendingSchedule(),));
              },
              child: Custom_List_Tile(icon: Icons.pending_outlined, icon_name: "Pending Schedule")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmSchedule(),));
              },
              child: Custom_List_Tile(icon: Icons.confirmation_num_outlined, icon_name: "Confirm Schedule")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>ArchiveSchedule(),));
              },
              child: Custom_List_Tile(icon: Icons.archive_outlined, icon_name: "Archaive Schedule")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfessionalInfo(),));
              },
              child: Custom_List_Tile(icon: Icons.camera_alt_outlined, icon_name: "Professional Info")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInfo(),));
              },
              child: Custom_List_Tile(icon: Icons.list_alt_outlined, icon_name: "Personal Info")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChemberInfo(),));
              },
              child: Custom_List_Tile(icon: Icons.home_work_outlined, icon_name: "Chember Info")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ContactInfo(),));
              },
              child: Custom_List_Tile(icon: Icons.contact_phone_outlined, icon_name: "Contact Info")),
          Divider(height: 1.0,thickness: 1.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MessageToDoctor(),));
              },
              child: Custom_List_Tile(icon: Icons.spatial_tracking_outlined, icon_name: "Message to doctor")),
          Divider(height: 1.0,thickness: 1.0,),

        ],
      ),
    );
  }
}
// drawer list text
class TextStylee{
  TextStyle MyTextStyle=GoogleFonts.abhayaLibre(
    fontSize: 16,
    fontWeight: FontWeight.w900,
    //letterSpacing: 1,
    color: Colors.black,
  ) ;
}

// drawer list text
class ServiceTextStyle{
  TextStyle MyTextStyle=GoogleFonts.abhayaLibre(
    fontSize: 16,
    fontWeight: FontWeight.w900,
    //letterSpacing: 1,
    color: Colors.black,
  ) ;
}

