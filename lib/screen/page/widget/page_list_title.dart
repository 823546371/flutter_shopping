import 'package:flutter/material.dart';
import 'package:flutter_shopping/constant.dart';

class PageListTitle extends StatefulWidget {
  const PageListTitle({
    Key key,
  }) : super(key: key);

  @override
  _PageListTitleState createState() => _PageListTitleState();
}

class _PageListTitleState extends State<PageListTitle> {
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productTitles.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                // change select
                currentSelect = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                productTitles[index],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: currentSelect == index
                      ? mPrimaryTextColor
                      : mScroudTextColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
