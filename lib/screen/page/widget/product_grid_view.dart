import 'package:flutter/material.dart';
import 'package:flutter_shopping/constant.dart';
import 'package:flutter_shopping/screen/page/widget/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return ProductItem(
              size: size,
              product: productList[index],
            );
          },
        ),
      ),
    );
  }
}

