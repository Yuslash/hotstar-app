import 'package:flutter/material.dart';

class ContinuePanel extends StatefulWidget {
  const ContinuePanel({super.key});

  @override
  _ContinuePanelState createState() => _ContinuePanelState();

}

class _ContinuePanelState extends State<ContinuePanel> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
        children: List.generate(4, (i) {
          return Padding(padding: EdgeInsets.only(left: 5),
          child: Container(
            height: 144,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 182,
                  height: 100,
                  child: DecoratedBox(decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                      
                    ),
                    child: ClipRRect(
                      child: Image.asset('images/aven.jpeg', fit: BoxFit.cover,),
                    ),
                  ),
                ),
                Container(
                  width: 182,
                  height: 44,
                  child: DecoratedBox(decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),color: Color(0xFF0F1014))),
                )     
              ],
            ),
          ),);
        })
      ),
      )
    );
  }
}