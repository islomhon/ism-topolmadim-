import 'package:figma_ui/pages/SelectedWeek.dart';
import 'package:figma_ui/components/subjectPage/RowTexts.dart';
import 'package:figma_ui/components/subjectPage/subjectTeksField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseSubject extends StatefulWidget {
  const ChooseSubject({super.key});

  @override
  State<ChooseSubject> createState() => _ChooseSubjectState();
}

class _ChooseSubjectState extends State<ChooseSubject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Selectedweek()),
          );
        },
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
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 73, 157, 99)),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Subjectteksfield(),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      Rowtext(
                        text1: 'Basic mathematics',
                        text2: 'Flutter & Dart',
                      ),
                      Rowtext(
                        text1: 'Endglish Beginner',
                        text2: 'Introduction to IELTS',
                      ),
                      Rowtext(
                        text1: 'MySql optimization',
                        text2: 'SEO',
                        text3Enable: true,
                        text3: 'SMM',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
