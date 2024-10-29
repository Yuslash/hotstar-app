import 'package:flutter/material.dart';

class SlideNav extends StatefulWidget {
  const SlideNav({super.key});


    @override
    _SlideNavState createState() => _SlideNavState();
}

class _SlideNavState extends State<SlideNav> {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 35),
        width: double.infinity,
        height: 317,
        color: Colors.grey,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset(
                'images/ff.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/ff.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/ff.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        )
    );
  }
}

