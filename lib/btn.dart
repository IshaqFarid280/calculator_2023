import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({required this.onTap, required this.btntext});

  VoidCallback onTap;
  String btntext;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin:EdgeInsets.all(5) ,
        height: MediaQuery.of(context).size.height*0.12,
        width: MediaQuery.of(context).size.width*0.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white24,

        ),
        child: Center(child: Text(btntext, style: TextStyle(
            fontSize: 30,
            color: Colors.white
        ))),
      ),
    );
  }
}
