import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Log_in_page extends StatefulWidget {
  const Log_in_page({Key? key}) : super(key: key);

  @override
  _Log_in_pageState createState() => _Log_in_pageState();
}

class _Log_in_pageState extends State<Log_in_page> {
  final String pic =
      'https://images.unsplash.com/photo-1530554764233-e79e16c91d08?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aGFtYnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.only(top: 60),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(pic), fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 40),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.restaurant,
                size: 70,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          _text(text: "Dineln", size: 30),
          const SizedBox(
            height: 300,
          ),
          _member_chef(),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.withOpacity(0.5),
                border: Border.all(width: 1, color: Colors.blue)),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                _text(text: "|", size: 40, fontWeight: FontWeight.w100),
                const SizedBox(
                  width: 10,
                ),
                _text(
                    text: "Continue with Facebook",
                    size: 17,
                    fontWeight: FontWeight.w200)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue.withOpacity(0.5),
                border: Border.all(width: 1, color: Colors.lightBlue)),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                _text(text: "|", size: 40, fontWeight: FontWeight.w100),
                const SizedBox(
                  width: 10,
                ),
                _text(
                    text: "Continue with Google",
                    size: 17,
                    fontWeight: FontWeight.w200)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple.withOpacity(0.5),
                border: Border.all(width: 1, color: Colors.purple)),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  FontAwesomeIcons.amazon,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                _text(text: "|", size: 40, fontWeight: FontWeight.w100),
                const SizedBox(
                  width: 10,
                ),
                _text(
                    text: "Continue with Amazon",
                    size: 17,
                    fontWeight: FontWeight.w200)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              top: 20,
            ),
            child: Row(
              children: [
                _text(
                    text: "Don't have an account?",
                    size: 20,
                    fontWeight: FontWeight.w300),
                const SizedBox(
                  width: 20,
                ),
                _text(
                    text: "Sign up",
                    size: 16,
                    fontWeight: FontWeight.w200,
                    color: Colors.purple.shade100),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  _member_chef() {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0))),
            child: _text(text: "Member", fontWeight: FontWeight.w400, size: 16),
          )),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0))),
              child: _text(
                  text: "Chef",
                  fontWeight: FontWeight.w400,
                  size: 16,
                  color: Colors.purple.shade400),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  _medias({required Color color}) {
    return Container(
      height: 60,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          border: Border.all(width: 1, color: color)),
      child: Row(
        children: const [
          Icon(
            FontAwesomeIcons.google,
            color: Colors.white,
            size: 20,
          ),
        ],
      ),
    );
  }

  _text(
          {required String text,
          Color color = Colors.white,
          FontWeight fontWeight = FontWeight.normal,
          double size = 24.0}) =>
      Text(text,
          style:
              TextStyle(color: color, fontWeight: fontWeight, fontSize: size));
}
