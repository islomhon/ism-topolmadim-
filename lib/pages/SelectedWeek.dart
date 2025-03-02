import 'package:figma_ui/components/selectedWeek.dart/CupertinoDropdownButtton.dart';
import 'package:figma_ui/components/selectedWeek.dart/CuppertinoTimePickerFunction.dart';
import 'package:figma_ui/components/selectedWeek.dart/MonthDropDownItemComponent.dart';
import 'package:figma_ui/components/selectedWeek.dart/WeekCheckboxses.dart';
import 'package:figma_ui/components/selectedWeek.dart/showDatePickerFunction.dart';
import 'package:figma_ui/pages/end_date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Selectedweek extends StatefulWidget {
  const Selectedweek({super.key});

  @override
  State<Selectedweek> createState() => _SelectedweekState();
}

class _SelectedweekState extends State<Selectedweek> {
  DateTime? selectedDate;
  String selectedOption = "";
  bool isContainerVisible = true;
  TimeOfDay? startTime;
  TimeOfDay? endTime;
  bool Checkbox1 = false;
  bool Checkbox2 = false;

  void toggleCheckbox(int index) {
    setState(() {
      if (index == 1) {
        Checkbox1 = true;
        Checkbox2 = false;
      } else {
        Checkbox1 = false;
        Checkbox2 = true;
      }
    });
  }

  void toggleContainer(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Container(
                    width: 110,
                    height: 35,
                    child: Center(
                      child: Text(
                        'cancel',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //continue
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EndDate()));
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Container(
                    width: 110,
                    height: 35,
                    child: Center(
                      child: Text(
                        'continue >',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 73, 157, 99),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 73, 157, 99),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('When does to start?', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 10),
                    CupertinoTextField(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade500),
                      ),
                      readOnly: true,

                      suffix: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      onTap:
                          () => showCupertinoDatePicker(
                            context: context,
                            initialDate: selectedDate ?? DateTime.now(),
                            onDateSelected: (DateTime newDate) {
                              setState(() {
                                selectedDate = newDate;
                              });
                            },
                          ),
                      controller: TextEditingController(
                        text:
                            selectedDate != null
                                ? "${selectedDate!.year}-${selectedDate!.month}-${selectedDate!.day}"
                                : "",
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Leave empty if you do not know',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Start time',
                                  style: TextStyle(fontSize: 17),
                                ),
                                CupertinoTextField(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                      color: Colors.grey.shade500,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  readOnly: true,

                                  suffix: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(CupertinoIcons.time),
                                  ),
                                  onTap:
                                      () => showCupertinoTimePicker(
                                        context: context,
                                        initialTime:
                                            startTime ?? TimeOfDay.now(),
                                        onTimeSelected: (TimeOfDay newTime) {
                                          setState(() {
                                            startTime = newTime;
                                          });
                                        },
                                      ),
                                  controller: TextEditingController(
                                    text:
                                        startTime != null
                                            ? "${startTime!.hour}:${startTime!.minute.toString().padLeft(2, '0')}"
                                            : "",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        //end time
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'End time',
                                  style: TextStyle(fontSize: 16),
                                ),
                                CupertinoTextField(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                      color: Colors.grey.shade500,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  readOnly: true,

                                  suffix: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(CupertinoIcons.time),
                                  ),
                                  onTap:
                                      () => showCupertinoTimePicker(
                                        context: context,
                                        initialTime: endTime ?? TimeOfDay.now(),
                                        onTimeSelected: (TimeOfDay newTime) {
                                          setState(() {
                                            endTime = newTime;
                                          });
                                        },
                                      ),
                                  controller: TextEditingController(
                                    text:
                                        endTime != null
                                            ? "${endTime!.hour}:${endTime!.minute.toString().padLeft(2, '0')}"
                                            : "",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(color: Colors.black, height: 0.1),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Color.fromARGB(255, 73, 157, 99),
                              value: Checkbox1,
                              onChanged: (value) => toggleCheckbox(1),
                            ),
                            Text('One-time', style: TextStyle(fontSize: 17)),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Color.fromARGB(255, 73, 157, 99),
                              value: Checkbox2,
                              onChanged: (value) => toggleCheckbox(2),
                            ),
                            Text('Repeated', style: TextStyle(fontSize: 17)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                SizedBox(height: 15),
                Visibility(
                  visible: Checkbox2,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Center(child: Text('every')),
                              width: 80,
                              height: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey.shade200,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: CupertinoTextField(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                      color: Colors.grey.shade500,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            CupertinoDropdownButton(
                              onItemSelected: toggleContainer,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),

                        if (selectedOption == "Week") Weekcheckbox(),
                        if (selectedOption == "Month") MonthCheckbox(),
                        if (selectedOption == "Day")
                          Text("", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
