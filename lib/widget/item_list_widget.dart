import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  Map<String, dynamic> item;
  ItemListWidget({
    required this.item
});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 9.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
                color: Color(0xff3D4584).withOpacity(0.11),
                blurRadius: 12.0,
                offset: const Offset(0, 7.0)
            ),
          ]),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 14.0, vertical: 12.0),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(14)),
              child: Icon(
                Icons.arrow_upward,
              )),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["type"],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  item["description"],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.0,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
          Text(
            "\$150",
            style: TextStyle(
              fontWeight: FontWeight.bold,

            ),
          ),
        ],
      ),
    );
  }
}
