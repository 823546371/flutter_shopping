import 'package:flutter/material.dart';
import 'package:flutter_shopping/constant.dart';
import 'package:flutter_shopping/screen/detail/widget/detail_color_dot.dart';

class DetailColor extends StatelessWidget {
  const DetailColor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Color'),
        SizedBox(height: 6,),
        Row(
          children: <Widget>[
            DetailColorDot(
              color: mPrimaryColor,
              check: true,
            ),
            DetailColorDot(
              color: mSizeYellowColor,
            ),
            DetailColorDot(
              color: mSizeGreyColor,
            ),
          ],
        )
      ],
    );
  }
}