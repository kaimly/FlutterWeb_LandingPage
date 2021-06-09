import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:robigo/screens/homeScreen/HomeScreen.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/customGradientBtn.dart';
import 'package:robigo/widgets/customTextFormField.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: ScreenTypeLayout.builder(
      desktop: (ctx) => Container(
          // padding: EdgeInsets.symmetric(horizontal: 300),
          margin: EdgeInsets.symmetric(horizontal: 700, vertical: 200),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(86, 140, 203, 0.12),
                blurRadius: 97,
                spreadRadius: 0,
                offset: Offset(
                  0.0,
                  4.0,
                ),
              )
            ],
          ),
          child: Login()),
      mobile: (ctx) => Login(),
    ));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              height: 50,
              label: "Login",
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName))
        ],
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
