import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

builShimmerEffect(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  return GridView(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: screenSize.width > 1700
          ? 3
          : screenSize.width > 1000
              ? 3
              : 2,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 30,
    ),
    children: [
      Shimmer.fromColors(
        baseColor: Colors.transparent,
        highlightColor: Colors.grey[100]!,
        child: Container(
          height: screenSize.width / 15.5,
          width: screenSize.width / 16,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5),
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(offset: Offset(4, 2), color: Colors.grey, blurRadius: 4)
            ],
          ),
        ),
      ),
      Shimmer.fromColors(
        baseColor: Colors.transparent,
        highlightColor: Colors.grey[100]!,
        child: Container(
          height: screenSize.width / 15.5,
          width: screenSize.width / 16,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5),
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(offset: Offset(4, 2), color: Colors.grey, blurRadius: 4)
            ],
          ),
        ),
      ),
      Shimmer.fromColors(
        baseColor: Colors.transparent,
        highlightColor: Colors.grey[100]!,
        child: Container(
          height: screenSize.width / 15.5,
          width: screenSize.width / 16,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5),
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(offset: Offset(4, 2), color: Colors.grey, blurRadius: 4)
            ],
          ),
        ),
      ),
    ],
  );
}
