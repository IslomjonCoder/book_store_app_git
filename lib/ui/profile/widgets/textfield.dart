import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;

  const GlobalTextField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    required this.textInputAction,
  }) : super(key: key);

  @override
  _GlobalTextFieldState createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  bool obscureText = true;
  Color changeTextColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.0,
      child: TextField(
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        obscureText: obscureText && widget.keyboardType == TextInputType.visiblePassword,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: widget.keyboardType == TextInputType.visiblePassword
              ? GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
                changeTextColor = obscureText ? Colors.red : Colors.grey;
              });
            },
            child: Container(
              padding: EdgeInsets.only(right: 15.w,top: 14.h),
              child: Text(
                "change",
                style: TextStyle(
                  color: changeTextColor,
                ),
              ),
            ),
          )
              : null,
        ),
      ),
    );
  }
}
