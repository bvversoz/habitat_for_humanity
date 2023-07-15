// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/styles/resume_styling_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MissionStatement extends StatefulWidget {
  @override
  _MissionStatementState createState() => _MissionStatementState();
}

class _MissionStatementState extends State<MissionStatement> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Get the current theme

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Material(
            type: MaterialType.transparency,
            child:   Animate(
              effects: [
                FadeEffect(
                  delay: Duration(seconds: 1),
                  duration: Duration(seconds: 2),
                )
              ],
              child: Chip(
                elevation: 4,
                shadowColor: Colors.white,
                backgroundColor: Color(0xFFB2D3F1),
                label: TextButton(
                  style: TextButton.styleFrom(
                    primary: theme.primaryColor,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Our Mission',
                        style: TextStyle(
                          fontFamily: 'DancingScript',
                          color: Color(0xFF313893),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.info_outline_rounded,
                        size: 20,
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              shadowColor: Colors.white,
              color: Color(0xFF4446A3),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          splashRadius: 15,

                          icon: Icon(Icons.arrow_upward, size: 15,),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              isVisible = false;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MissionStatementIcon(
                          icon: Icons.language,
                          color: Colors.greenAccent,
                        ),
                        MissionStatementIcon(
                          icon: Icons.electric_bolt,
                          color: Colors.yellowAccent,
                        ),
                        MissionStatementIcon(
                          icon: Icons.favorite,
                          color: Colors.redAccent,
                        ),
                        MissionStatementIcon(
                          icon: Icons.church,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SizedBox(
                        width: 180,
                        height: 350,
                        child: Text(
                          "We are dedicated to empowering individuals experiencing homelessness by helping them find affordable housing and providing comprehensive support. Together, we create a compassionate environment where everyone has access to safe and stable housing. Through counseling, job assistance, skills training, and essential resources, we empower individuals and families to transform their lives and build a stronger community.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // letterSpacing: 2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),


      ],
    );
  }
}

class MissionStatementIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const MissionStatementIcon({
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
          icon,
          color: color,
          size: 20,
      ),
    );
  }
}
