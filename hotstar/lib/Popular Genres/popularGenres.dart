import 'package:flutter/material.dart';

class PopularGenres extends StatefulWidget {
  const PopularGenres({
    super.key,
    required this.Genres,
    required this.image,
    required this.color1,
    required this.color2,
  });

  final String Genres;
  final String image;
  final Color color1;
  final Color color2;

  @override
  _PopularGenresState createState() => _PopularGenresState();
}

class _PopularGenresState extends State<PopularGenres> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
          width: 120,
          height: 66,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                  opacity: 0.2),
              gradient: LinearGradient(
                begin: Alignment(0.97, -0.25),
                end: Alignment(-0.97, 0.25),
                colors: [widget.color1, widget.color2],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.Genres,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.w400,
                      height: 0.07),
                ),
              ],
            ),
          )),
    );
  }
}
