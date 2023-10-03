import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Const/color.dart';

class Button extends StatelessWidget {
  String texxt;
  Color? color;
  Button({Key? key, required this.texxt, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: color ?? primary,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 219, 207, 207),
                blurRadius: 5,
                spreadRadius: 3,
                offset: Offset(0, 5)), // no shadow color set, defaults to black
            // BoxShadow(color: Colors.white, offset: Offset(0, 0)),
            //               BoxShadow(color: Colors.white, offset: Offset(0, 0)),
          ]),
      height: 40,
      width: double.infinity,
      child: Center(
        child: Text(
          texxt,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white, fontSize: 18,
            //  color: Color(AppColors.titleText),
          ),
        ),
      ),
    );
  }
}
