import 'package:flutter/material.dart';

import 'package:test_web_app/models/immobilier_post.dart';
import 'package:test_web_app/widgets/immobilier_post_card.dart';
import 'package:test_web_app/widgets/immobilier_update_dialog.dart';

buildPostList(BuildContext context, List<ImmobilierPost> immobilierPostList) {
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
    ),
    children: [
      ...immobilierPostList.map(
        (immobilierPost) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return ImmobilerUpdateDialog(
                        immobilierPost: immobilierPost,
                      );
                    });
              },
              child: ImmobilierCard(
                screenSize: screenSize,
                immobilierPost: immobilierPost,
              ),
            ),
          ),
        ),
      )
    ],
  );
}
