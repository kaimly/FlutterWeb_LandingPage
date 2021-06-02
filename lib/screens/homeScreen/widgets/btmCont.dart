import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bgMask.png"),
                    fit: BoxFit.cover)),
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Center(
                child: Text("Get Free Demo",
                    style: Theme.of(context).textTheme.headline5!.merge(
                        TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor))),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 400,
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(85),
                      color: Theme.of(context).primaryColor),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Get Demo",
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyText1!
                            .merge(TextStyle(color: Colors.white))),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
