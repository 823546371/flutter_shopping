import 'package:flutter/material.dart';
import 'package:flutter_shopping/constant.dart';
import 'package:flutter_shopping/screen/page/widget/page_list_title.dart';
import 'package:flutter_shopping/screen/page/widget/page_title_name.dart';
import 'package:flutter_shopping/screen/page/widget/product_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageTitleName(),
          SizedBox(
            height: 20,
          ),
          PageListTitle(),
          SizedBox(
            height: 20,
          ),
          ProductGridView(size: size)
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(
          'assets/images/back.svg',
          width: 24,
          height: 24,
          color: mPrimaryTextColor,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/search.svg',
            width: 24,
            height: 24,
            color: mPrimaryTextColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/cart.svg',
            width: 24,
            height: 24,
            color: mPrimaryTextColor,
          ),
        ),
      ],
    );
  }
}

