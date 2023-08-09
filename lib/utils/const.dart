import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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