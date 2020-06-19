import 'package:flutter/material.dart';
import 'package:flutter_shopping/constant.dart';
import 'package:flutter_shopping/screen/detail/widget/detail_buy.dart';
import 'package:flutter_shopping/screen/detail/widget/detail_color.dart';
import 'package:flutter_shopping/screen/detail/widget/detail_info.dart';
import 'package:flutter_shopping/screen/detail/widget/detail_number.dart';
import 'package:flutter_shopping/screen/detail/widget/detail_size.dart';
import 'package:flutter_shopping/screen/detail/widget/detail_title.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryColor,
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DetailTitle(),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 240),
                  padding: const EdgeInsets.fromLTRB(24, 90, 24, 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          DetailColor(),
                          SizedBox(
                            width: 100,
                          ),
                          DetailSize()
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                        'Lorem Ipsum has been the industry\'s standard dummy text ever since. '
                        'When an unknown printer took a galley.',
                        style: TextStyle(
                            color: mPrimaryTextColor,
                            fontSize: 13,
                            height: 1.5),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          DetailNumber(),
                          Container(
                            width: 32,
                            height: 32,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: mRedColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: SvgPicture.asset(
                              'assets/images/heart.svg',
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      DetailBuy()
                    ],
                  ),
                ),
                DetailInfo()
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      brightness: Brightness.dark,
      backgroundColor: mPrimaryColor,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/back.svg',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/search.svg',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/cart.svg',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
