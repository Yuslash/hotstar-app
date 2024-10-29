import 'package:flutter/material.dart';

class WatchButton extends StatefulWidget {
  const WatchButton({super.key});

  @override
  _WatchButtonState createState() => _WatchButtonState();
}

class _WatchButtonState extends State<WatchButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: DecoratedBox(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color (0xFF202126)),
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){
                  print("Play button clicked!");
                  }, icon: Image.asset('images/play.png'),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),),
                  const Padding(padding:  EdgeInsets.only(right: 15),
                    child: Text("Watch Free", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),),
                  ),
          ],
        ),
          ),
          ),
        ),
      ),
    );
  }
}
