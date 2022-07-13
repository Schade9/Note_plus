import 'package:flutter/material.dart';
import 'package:todo_app/screens/taskpage.dart';
import 'package:todo_app/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity, // expand container to fit whole page
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          color: const Color(0xFFF6F6F6),
          // stack things on top of each other
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, // start elements at left side of screen
                children: [
                  Container(
                    // add margin below the image
                    margin: const EdgeInsets.only(
                      top: 32.0,
                      bottom: 32.0,
                    ),
                    child: const Image(
                      // import image
                      image: AssetImage(
                        'assets/images/logo.png'
                      ),
                    ),
                  ),
                  // make the task widgets scrollable
                  Expanded(
                    child: ListView(
                      children: [
                        // import TaskCardWidget
                        TaskCardWidget(
                          title: "Get Started!",
                          desc: "Hello User! Welcome to TODO app, this is a default ask that you can edit or delete to start the app.",
                        ),
                        TaskCardWidget(
                          desc: "Hello User! Welcome to TODO app, this is a default ask that you can edit or delete to start the app.",
                        ),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                      ],
                    ),
                  ),
                ],
              ),
              // position button at the bottom
              Positioned(
                bottom: 24.0,
                right: 0.0,
                // wrap container in GestureDetector to detect button action
                child: GestureDetector(
                  // navigate to taskpage when button clicked
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => Taskpage()),
                    );
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7349FE),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Image(
                      image: AssetImage(
                        "assets/images/add_icon.png",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}