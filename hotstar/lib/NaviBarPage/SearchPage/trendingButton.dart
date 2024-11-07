import 'package:flutter/material.dart';

class TrendingButton extends StatefulWidget {
  const TrendingButton({
    super.key,
    required this.items,
    });

    final List<dynamic> items;

  @override
  _TrendingButtonState createState() => _TrendingButtonState();
}

class _TrendingButtonState extends State<TrendingButton> {
    
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Trending in", style: TextStyle(color: Color(0xFFE5E6EC), fontSize: 17, fontWeight: FontWeight.w600, fontFamily: 'inter' )),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: widget.items.asMap().entries.map((entry) {
            
                  int index =  entry.key;
                  String value = entry.value;
            
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(onPressed: 
                  (){
                    setState(() {
                      currentIndex = index;
                    });
                  }, child: Text(value, style: TextStyle(color: index == 0 ? Colors.white : Color(0xffA7ACB8), fontSize: 12, fontFamily: 'inter', fontWeight: FontWeight.w500),),
                  style: TextButton.styleFrom(
                    backgroundColor: index == currentIndex ? Color(0xff222328) : null,
                    side: BorderSide(color: Color(0xFF212226), width: 1),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    )
                  ),
                  ),
                );
              }).toList()
            ),
          ),
        ],
      ),      
    );
  }
}