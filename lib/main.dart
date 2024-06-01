import 'package:dialouge_box/screens/firstpage.dart';
import 'package:dialouge_box/screens/secondpage.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(dialouge_Box());
}
class dialouge_Box extends StatelessWidget {
  const dialouge_Box({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      routes: {
      '/sec':(context) => Firstpage(),
        '/':(context) => FullScreen(),

      },
    );
  }
}
