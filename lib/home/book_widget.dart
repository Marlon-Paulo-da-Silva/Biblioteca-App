import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  String imageUrl =
      "https://images.unsplash.com/photo-1535498730771-e735b998cd64?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 240,
      margin: EdgeInsets.fromLTRB(24, 12, 24, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Image.network(imageUrl),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 230,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
