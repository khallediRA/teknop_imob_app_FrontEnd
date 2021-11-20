import 'package:flutter/material.dart';
import 'package:test_web_app/models/immobilier_post.dart';
import 'package:test_web_app/services/network_calls.dart';
import 'package:test_web_app/widgets/immobilier_post_list_builder.dart';
import 'package:test_web_app/widgets/shimmer_build.dart';

class ImmobilierPostList extends StatefulWidget {
  const ImmobilierPostList({Key? key}) : super(key: key);

  @override
  _ImmobilierPostListState createState() => _ImmobilierPostListState();
}

class _ImmobilierPostListState extends State<ImmobilierPostList> {
  late Future<List<ImmobilierPost>> immobolierPosts;
  @override
  void initState() {
    NetworkCalls networkCalls = NetworkCalls();
    immobolierPosts = networkCalls.getAllPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return FutureBuilder<List<ImmobilierPost>>(
        future: immobolierPosts,
        builder: (context, immobilierPostList) {
          if (immobilierPostList.hasData) {
            return buildPostList(context, immobilierPostList.data!);
            // return buildPostList(context, immobilierPostList.data!);
          } else if (immobilierPostList.hasError) {
            return Text('${immobilierPostList.error}');
          }
          return builShimmerEffect(context);
          // return builShimmerEffect(context);
        });
  }
}
