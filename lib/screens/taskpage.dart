import 'package:flutter/material.dart';
import 'package:todo_app/widgets.dart';

class Taskpage extends StatefulWidget {
  const Taskpage({Key? key}) : super(key: key);

  @override
  State<Taskpage> createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // padding to extend arrow and task down
              Padding(
                padding: const EdgeInsets.only(
                  top: 24.0,
                  bottom: 6.0,
                ),
                child: Row(
                  children: [
                    // inkwell yo give touch ripple effect
                    InkWell(
                      // action on tap 
                      onTap: () {
                        Navigator.pop(context); // goes back to previous page
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Image(
                          image: AssetImage('assets/images/back_arrow_icon.png'),
                        ),
                      ),
                    ),
                    const Expanded(
                      // input text field
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Task Title",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF211551),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // textfield for task description
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 12.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Description for the task...",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                    ),
                  ),
                ),
              ),
              TodoWidget(),
              TodoWidget(),
              TodoWidget(),
              TodoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}