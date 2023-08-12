import 'package:doc_app/drawer_section/drawer_menu.dart';
import 'package:flutter/material.dart';


class Custom_List_Tile extends StatelessWidget {
  Custom_List_Tile({Key? key,required this.icon,required this.icon_name}) : super(key: key);
  final IconData? icon;
  String ? icon_name;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 0.0,left: 10.0,right: 10.0),
        //   margin: EdgeInsets.only(
        //     left: 6,
        //     right: 6,
        //   ),
        height: 45,
        width: double.infinity,
        child:Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size:25,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
                '${icon_name}',
                style: TextStylee().MyTextStyle
            ),
          ],
        )
    );
  }
}
