import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Aristocratic Hand Bag',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            'Office Code',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
