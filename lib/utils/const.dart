import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const rootUrl = "http://drmahabubshaheen.com/";
const baseUrl = "${rootUrl}api/";


final servicesList = [
  {
    'name': 'Pending Schedule',
    'image': 'images/time.png',
  },
  {
    'name': 'Confirm Schedule',
    'image': 'images/verified.png',
  },
  {
    'name': 'Archive Schedule',
    'image': 'images/archive.png'
  },
  {
    'name': 'Professional Info',
    'image': 'images/profile.png'
  },
  {
    'name': 'Personal Info',
    'image': 'images/profile.png'
  },
  {
    'name': 'Chamber Info',
    'image': 'images/profile.png'
  },
  {
    'name': 'Contact Info',
    'image': 'images/profile.png'
  },
  {
    'name': 'Message to Doctor',
    'image': 'images/messenger.png'
  }
];

final appointmentForList = [
  "Medical Examination",
  "Doctor Check",
  "Result Analysis",
  "Check-up"
];
///message to doctor
final messageList = [
  {
    'name': 'How are you sir?',
    'id': 1,
  },
  {
    'name': 'I am fine and you?',
    'id': 2,
  },
  {
    'name': 'Are you available here sir?',
    'id': 3,
  },
  {
    'name': 'Yes i am here Now\nCan i help you?',
    'id': 4,
  },
  {
    'name': 'Ofcourse Sir',
    'id': 5,
  },
  {
    'name': 'Okay,Now Tel me your problem,Okay,Now Tel me your problem.Okay,Now Tel me your problem',
    'id': 6,
  },
  {
    'name': 'How are you sir?',
    'id': 7,
  },
  {
    'name': 'I am fine and you?',
    'id': 8,
  },
  {
    'name': 'How are you sir?',
    'id': 9,
  },
  {
    'name': 'I am fine and you?',
    'id': 10,
  },
  {
    'name': 'How are you sir?',
    'id': 11,
  },
  {
    'name': 'I am fine and you?',
    'id': 12,
  },
];

// chat list text
chatTextStyle(){
  return GoogleFonts.roboto(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  ) ;
}