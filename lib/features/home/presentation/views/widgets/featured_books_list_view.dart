import 'package:flutter/material.dart';

import 'featured_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: FeaturedListViewItem(),
              )),
    );
  } // build()
} // FeaturedBooksListView
