import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/customGradientBtn.dart';
import 'package:robigo/widgets/customTextFormField.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.home),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Login",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              isPasswordField: true,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomGradientBtn(
                radiusBL: 6,
                radiusBR: 6,
                radiusTL: 6,
                radiusTR: 6,
                label: "Login",
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  CustomTextField({
    this.isPasswordField = false,
  });

  final bool isPasswordField;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

final BorderRadius _borderRadius = BorderRadius.all(Radius.circular(6));

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (e) {},
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          filled: true,
          fillColor: textformfieldfillcolor,
          hintStyle: TextStyle(fontSize: 12),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          hintText: widget.isPasswordField ? "Password" : "Email",
          border: OutlineInputBorder(
              borderRadius: _borderRadius, borderSide: BorderSide.none)),
    );
  }
}
