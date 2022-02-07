import 'package:flutter/material.dart';

Widget formField(BuildContext context, String title) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.05,
    width: MediaQuery.of(context).size.width / 1.2,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.greenAccent[100]?.withOpacity(0.7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: const UnderlineInputBorder(borderSide: BorderSide.none),
            labelText: title,
            labelStyle: TextStyle(
                color: Color(0xff2EB886), fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
