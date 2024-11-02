import 'package:flutter/material.dart';

class AdvertPanel extends StatefulWidget {
  const AdvertPanel({
  super.key,
  required this.title,
  required this.subTitle,
  required this.image,
  });

  final String title;
  final String subTitle;
  final String image;

  @override
  _AdvertPanelState createState() => _AdvertPanelState();
}

class _AdvertPanelState extends State<AdvertPanel> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff141822),
      margin: EdgeInsets.only( top: 20),
      child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                widget.image
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'images/hotstarlogo.png',
                            width: 35,
                            height: 35,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                widget.title,
                                style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600),
                              ),
                              Text(widget.subTitle, 
                                style: TextStyle(color: Color(0xff858A96), fontSize: 8, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                    Container(
                      width: 62,
                      height: 30,
                     
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),  color: Color(0xff22222B),
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [Text("Explore", style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600, color: Colors.white),)],
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}