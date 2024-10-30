import 'package:flutter/material.dart';

class StudioPanel extends StatefulWidget {
  const StudioPanel({
    super.key,
    required this.image,
    required this.crosSize,
    required this.heightSize,
    });

    final String image;
    final int crosSize;
    final int heightSize;

  @override
  _StudioPanelState createState() => _StudioPanelState();
}

class _StudioPanelState extends State<StudioPanel> {

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 120,
    height: 66,
    padding: const EdgeInsets.all(0),
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
        gradient: RadialGradient(
            center: Alignment(0.32, 0.84),
            radius: 0,
            colors: [Color(0xFF1A1D2A), Color(0xFF151922)],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    ),
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
            Container(
                width: widget.crosSize.toDouble(),
                height: widget.heightSize.toDouble(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.fill,
                    ),
                ),
            ),
        ],
    ),
);
  }
}