import 'package:flutter/material.dart';
import '../../../../utils.dart';

class InputField extends StatelessWidget {
  // final String InputField;
  final String labelName;
  final String hint;
  final bool enabled;
  final TextEditingController controller;
  const InputField(
      {super.key,
      // required this.InputField,
      required this.enabled,
      required this.controller,
      required this.hint,
      required this.labelName});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 445;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      // input fields
      margin: EdgeInsets.fromLTRB(32 * fem, 0 * fem, 32.41 * fem, 22 * fem),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8.52 * fem),
            child: Text(
              labelName,
              style: SafeGoogleFont(
                'Inter',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2125 * ffem / fem,
                color: const Color(0xff666666),
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffe7e7e7)),
                color: const Color(0xfff6f6f6),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 14.0),
                  hintText: hint,
                  hintStyle: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * ffem / fem,
                    color: const Color(0xffbdbdbd),
                  ),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: const Color(0xff666666),
                ),
                enabled: enabled,
              ))
        ],
      ),
    );
    // Container(
    //   padding: EdgeInsets.fromLTRB(16 * fem, 19 * fem, 16 * fem, 16.48 * fem),
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Color(0xffe7e7e7)),
    //     color: Color(0xfff6f6f6),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   child: Text(
    //     InputField,
    //     style: SafeGoogleFont(
    //       'Inter',
    //       fontSize: 16 * ffem,
    //       fontWeight: FontWeight.w500,
    //       height: 1.2125 * ffem / fem,
    //       color: disabled == true
    //           ? const Color(0xffbdbdbd)
    //           : const Color(0xff000000),
    //     ),
    //   ),
    // );
  }
}
