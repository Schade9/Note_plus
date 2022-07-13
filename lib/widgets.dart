import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {


  // use ? to accept null values in dart
  final String? title;
  final String? desc;
  
  TaskCardWidget({this.title, this.desc});
  
  //const TaskCardWidget({required Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      // margin below task widget to make space between 2 widgets
      margin: const EdgeInsets.only(
        bottom: 20.0,
      ),
      // add rounded corners and color to task widget
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)", // if title is null use "Unnamed task"
            style: const TextStyle(
              color: Color(0xFF211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              desc ?? "No Description Added.",
              style: const TextStyle(
                fontSize: 16.0,
                color: Color(0xFF86829D),
                height: 1.5,
              ),
            ),
          ),
        ],
      )
    );
  }
}

class TodoWidget extends StatelessWidget {
  final String? text;
  final bool isDone;

  TodoWidget({this.text, required this.isDone});

  //const TodoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height: 20.0,
            margin: const EdgeInsets.only(
              right: 16.0,
            ),
            decoration: BoxDecoration(
              color: isDone ? Color(0xFF7349FE) : Colors.transparent,
              borderRadius: BorderRadius.circular(6.0),
              border: isDone ? null : Border.all(
                color: Color(0xFF86829D),
                width: 1.5
              )
            ),
            child: const Image(
              image: AssetImage(
                'assets/images/check_icon.png',
              ),
            ),
          ),
          Text(
            text ?? "(Unnamed Todo)",
            style: TextStyle(
              color: isDone ? Color(0xFF211551) : Color(0xFF86829D),
              fontSize: 16.0,
              fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context, Widget child, AxisDirection axisDirection){
      return child;
    }
}