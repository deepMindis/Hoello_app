// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MakeBooking extends StatefulWidget {
  const MakeBooking({super.key});

  @override
  State<MakeBooking> createState() => _MakeBookingState();
}

class _MakeBookingState extends State<MakeBooking> {
  //___________________________ variables _______________
  TextEditingController checkindate = TextEditingController();
  TextEditingController checkoutdate = TextEditingController();

  String? valuechoose;
  List roomtypes = ['Single Room', 'Double Room', 'Group Room', 'Family Room'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 19, 173),
      //_________________________________________ App Bar _________________________________
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 65, 19, 173),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 65, 19, 173),
          iconSize: 35,
        ),
      ),
      //___________________________________________ body _______________________________
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            //__________________________________________ image ______________________________
            ClipRRect(
              borderRadius: BorderRadius.circular(-300),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bookingbroccess/booking.jpeg"),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 65, 19, 173).withOpacity(.8),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Make Booking Easily",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
            //_________________________________________________________________
            SizedBox(
              height: 10,
            ),
            //____________________________________ text ________________________
            Container(
              child: Text(
                'Enter Details',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            //__________________________________ size box _____
            SizedBox(
              height: 40,
            ),
            //____________________________________ text and txet form field________________________
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Check-in',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  //____________________________________ textformfield 1  _______________
                  SizedBox(
                    height: 15,
                  ),
                  //_________________________________________________

                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    controller: checkindate,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: '1/2/2022',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 228, 220, 220)),
                      suffixIcon: IconButton(
                        onPressed: () async {
                          DateTime? pickeddate1 = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );
                          if (pickeddate1 != null) {
                            setState(() {
                              checkindate.text =
                                  DateFormat('yyyy-MM-dd').format(pickeddate1);
                            });
                          }
                        },
                        icon: Icon(Icons.calendar_month_outlined),
                        color: Colors.white,
                        iconSize: 25,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 228, 221, 221)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //__________________________________ size box _____
            SizedBox(
              height: 20,
            ),
            //____________________________________ text and txet form field________________________
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Check-Out',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  //____________________________________ textformfield 2 _______________
                  SizedBox(
                    height: 15,
                  ),
                  //_________________________________________________

                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    controller: checkoutdate,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: '1/2/2022',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 228, 220, 220)),
                      suffixIcon: IconButton(
                        onPressed: () async {
                          DateTime? pickeddate2 = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );
                          if (pickeddate2 != null) {
                            setState(() {
                              checkoutdate.text =
                                  DateFormat('yyyy-mm-dd').format(pickeddate2);
                            });
                          }
                        },
                        icon: Icon(Icons.calendar_month_outlined),
                        color: Colors.white,
                        iconSize: 25,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 228, 221, 221)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //______________________________________ text __________________________________
            SizedBox(
              height: 25,
            ),

            //__________________________________ dropdown button __________________
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: DropdownButton(
                    dropdownColor: Color.fromARGB(255, 65, 19, 173),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    iconSize: 45,
                    underline: SizedBox(),
                    value: valuechoose,
                    hint: Text(
                      'Select Room Type :',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    items: roomtypes.map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      );
                    }).toList(),
                    onChanged: (newvalue) {
                      setState(() {
                        valuechoose = newvalue as String?;
                      });
                    }),
              ),
            ),
            //__________________________________________________
            SizedBox(
              height: 50,
            ),
            //__________________________________________ Button _________________________
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(30)),
              child: MaterialButton(
                onPressed: (() {}),
                child: Text(
                  "Check Room Availability",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
