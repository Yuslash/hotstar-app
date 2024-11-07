import 'package:flutter/material.dart';

class FilterData extends StatefulWidget {
  const FilterData({
    super.key,
    required this.data,
    });

    final List<dynamic> data;

  @override
  _FilterDataState createState() => _FilterDataState();
}

class _FilterDataState extends State<FilterData> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Wrap(
        children: widget.data.asMap().entries.map((list) {

            int index = list.key;
            String value = list.value;

          return Padding(padding: EdgeInsets.only(right: 4, bottom: 4),
            child: Container(
              width: ((index - 6) % 8 == 0 && index >= 6) ? 244 : 120,
              height: 178,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), color: Colors.red),
            ),
          );

        }).toList()
      ),
    );
  }
}