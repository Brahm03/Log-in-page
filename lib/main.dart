import 'package:flutter/material.dart';
import 'package:log_in_coffe/screens/log_in.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Log in Page",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.black
        )
      ),
      home: Log_in_page(),
    );
  }
}
