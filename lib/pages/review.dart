import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
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
    );
  }
}