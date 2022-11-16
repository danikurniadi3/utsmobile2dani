import 'package:flutter/material.dart';

class person extends StatelessWidget {
  const person({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            width: 1000,
            child: Text.rich(
              TextSpan(
                  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra, nisi at eleifend vestibulum, tellus nulla placerat nibh, vitae sodales enim purus a libero. Nullam rutrum augue ligula. ', // default text style
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Integer suscipit felis dignissim ante faucibus, sit amet convallis urna elementum. Vestibulum gravida tortor eu erat fringilla accumsan. Aenean quis ullamcorper libero.',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'Aliquam bibendum sem non ligula interdum, ut sagittis lectus aliquam. Donec dictum, neque et rhoncus scelerisque, mauris orci faucibus ex, at euismod orci orci sed risus. Sed mattis turpis id molestie viverra. Morbi convallis, ipsum eget cursus placerat, odio ligula blandit dolor, eget pretium felis orci non ligula.', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                  style: TextStyle(color: Colors.orange, height: 2)
              ),
            ),
          )),
    );
  }
}