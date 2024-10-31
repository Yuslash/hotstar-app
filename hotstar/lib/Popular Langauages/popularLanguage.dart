import 'package:flutter/material.dart';

class PopularLanguage extends StatefulWidget {
  const PopularLanguage({
    super.key,
    required this.language,
    required this.image,
    required this.color1,
    required this.color2,
    });

    final String language;
    final String image;
    final Color color1;
    final Color color2;

  @override
  _PopularLanguageState createState() => _PopularLanguageState();
}



class _PopularLanguageState extends State<PopularLanguage> {

  @override
  Widget build(BuildContext context){ 
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 120,
        height: 66,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
        image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover, opacity: 0.2),
        gradient: LinearGradient(
              begin: Alignment(0.97, -0.25),
              end: Alignment(-0.97, 0.25),
              colors: [widget.color1, widget.color2],
            ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                widget.language,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.w400,
                    height: 0.07),
              ),
          ],
        )
      ),
    );
  }
}