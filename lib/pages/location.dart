import 'package:figma_ui/components/checkbox.dart';
import 'package:figma_ui/pages/review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  void updateSelection(int index) {
    setState(() {
      if (index == 1) {
        isChecked1 = true;
        isChecked2 = false;
      } else {
        isChecked1 = false;
        isChecked2 = true;
      }
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReviewPage()),
              );
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: Color.fromARGB(255, 73, 157, 99),
                      value: isChecked1,
                      onChanged: (value) => updateSelection(1),
                    ),
                    Text("Online", style: TextStyle(fontSize: 25)),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Color.fromARGB(255, 73, 157, 99),
                      value: isChecked2,
                      onChanged: (value) => updateSelection(2),
                    ),
                    Text("Offline", style: TextStyle(fontSize: 25)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter full adress', style: TextStyle(fontSize: 17)),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300,
                  ),
                  height: 100,
                  child: Center(
                    child: CupertinoTextField(
                      maxLines: 5,
                      placeholderStyle: TextStyle(color: Colors.black45),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text('Leave empty fi you do not know'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
