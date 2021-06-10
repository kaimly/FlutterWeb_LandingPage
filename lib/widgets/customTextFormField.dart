import 'package:flutter/material.dart';

//? used in homepage and indexpage
class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool isSearchIcon;
  CustomTextFormField({required this.hintText, this.isSearchIcon = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: isSearchIcon ? Icon(Icons.search) : SizedBox(),
        hintText: hintText,
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(10.0),
          ),
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );
  }
}
