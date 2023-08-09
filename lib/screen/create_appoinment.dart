import 'package:doc_app/utils/const.dart';
import 'package:doc_app/utils/utils.dart';
import 'package:flutter/material.dart';

class CreateAppointment extends StatefulWidget {
  const CreateAppointment({super.key});

  @override
  State<CreateAppointment> createState() => _CreateAppointmentState();
}

class _CreateAppointmentState extends State<CreateAppointment> {

  String? selectedStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: const Color(0xffaec2e3),
        scrolledUnderElevation: 0,
        title: const Text("Appointment Form",
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
        ),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Full Name', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              const SizedBox(height: 5,),
              SizedBox(
                height: 40.0,
                child: TextField(
                  style: const TextStyle(fontSize: 14),
                  // controller: projectNameCtrl,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5),
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    hintText: "Enter your name",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 8,),

              const Text('Email', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              const SizedBox(height: 5,),
              SizedBox(
                height: 40.0,
                child: TextField(
                  style: const TextStyle(fontSize: 14),
                  // controller: projectNameCtrl,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5),
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    hintText: "Enter your email",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),

              const Text('Phone', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              const SizedBox(height: 5,),
              SizedBox(
                height: 40.0,
                child: TextField(
                  style: const TextStyle(fontSize: 14),
                  // controller: projectNameCtrl,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5),
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    hintText: "Enter your phone",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),

              const Text('Address', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              const SizedBox(height: 5,),
              SizedBox(
                // height: 40.0,
                child: TextField(
                  style: const TextStyle(fontSize: 14),
                  // controller: projectNameCtrl,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5,top: 5),
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    hintText: "Enter your address",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  maxLines: 3,
                ),
              ),
              const SizedBox(height: 8,),

              const Text('Appointment Date', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              const SizedBox(height: 5,),
              GestureDetector(
                onTap: () {
                  firstSelectedDate();
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey.shade400,
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        firstPickedDate == null
                            ? Utils.formatFrontEndDate(DateTime.now())
                            : firstPickedDate!,
                        style: const TextStyle(fontSize: 13.0),
                      ),
                      const Icon(Icons.calendar_month,size: 18,)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8,),

              const Text('Appointment For', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              const SizedBox(height: 5,),
              Container(
                height: 40.0,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: const Text(
                      'Select Status',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    dropdownColor: const Color.fromARGB(255, 231, 251,
                        255), // Not necessary for Option 1
                    value: selectedStatus,
                    onChanged: (newValue) {
                      setState(() {
                        selectedStatus = newValue!.toString();
                      });
                    },
                    items: appointmentForList.map((location) {
                      return DropdownMenuItem(
                        value: location,
                        child: Text(
                          "${location}",
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(height: 10,),

              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(onPressed: () {

                },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    backgroundColor: const Color(0xffaec2e3),
                    foregroundColor: Colors.black
                  ),
                  child: const Text("Confirm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  String? firstPickedDate;

  var toDay = DateTime.now();
  void firstSelectedDate() async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2050));
    if (selectedDate != null) {
      setState(() {
        firstPickedDate = Utils.formatFrontEndDate(selectedDate);
        print("First Selected date $firstPickedDate");
      });
    }
    else{
      setState(() {
        firstPickedDate = Utils.formatFrontEndDate(toDay);
        print("First Selected date $firstPickedDate");
      });
    }
  }


}