import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Padding(padding: EdgeInsets.only(left: 25),
        child: Row(
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/plus.png',
                      fit: BoxFit.cover,
                      width: 20,
                      height: 20,
                    )),
                    Text("Watchlists", style: TextStyle(color: Color(0xFFA2A3A7), fontSize: 10, fontWeight: FontWeight.w600, fontFamily: 'inter'),)
              ],
            ),
            SizedBox(width: 30),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/share.png',
                      fit: BoxFit.cover,
                      width: 20,
                      height: 20,
                    )),
                    Text("Share", style: TextStyle(color: Color(0xFFA2A3A7), fontSize: 10, fontWeight: FontWeight.w600, fontFamily: 'inter'),)
              ],
            ),
            SizedBox(width: 30),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/downloads.png',
                      fit: BoxFit.cover,
                      width: 20,
                      height: 20,
                    )),
                    Text("Download", style: TextStyle(color: Color(0xFFA2A3A7), fontSize: 10, fontWeight: FontWeight.w600, fontFamily: 'inter'),)
              ],
            ),
            SizedBox(width: 30),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/rate.png',
                      fit: BoxFit.cover,
                      width: 20,
                      height: 20,
                    )),
                    Text("Rate", style: TextStyle(color: Color(0xFFA2A3A7), fontSize: 10, fontWeight: FontWeight.w600, fontFamily: 'inter'),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}