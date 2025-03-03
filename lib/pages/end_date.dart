import 'package:figma_ui/components/selectedWeek.dart/showDatePickerFunction.dart';
import 'package:figma_ui/pages/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EndDate extends StatefulWidget {
  const EndDate({super.key});

  @override
  State<EndDate> createState() => _EndDateState();
}

class _EndDateState extends State<EndDate> {
  DateTime? selectedDate_end_date;
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

          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LocationPage()));
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your new [course name] starts on',
                  style: TextStyle(fontSize: 17),
                ),
                Text('[start date].', style: TextStyle(fontSize: 17)),
                Text('when does it end?', style: TextStyle(fontSize: 17)),
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('End date', style: TextStyle(fontSize: 15)),
                SizedBox(height: 5),
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
                        initialDate: selectedDate_end_date ?? DateTime.now(),
                        onDateSelected: (DateTime newDate) {
                          setState(() {
                            selectedDate_end_date = newDate;
                          });
                        },
                      ),
                  controller: TextEditingController(
                    text:
                        selectedDate_end_date != null
                            ? "${selectedDate_end_date!.year}-${selectedDate_end_date!.month}-${selectedDate_end_date!.day}"
                            : "",
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: Divider(color: Colors.black)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('OR', style: TextStyle(fontSize: 20)),
                ),
                Expanded(child: Divider(color: Colors.black)),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Container(
                  child: Center(child: Text('after')),
                  width: 80,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CupertinoTextField(
                      keyboardType: TextInputType.number,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Center(child: Text('sessions')),
                  width: 80,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
