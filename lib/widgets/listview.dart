import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../routes/route_identifier.dart';
import '../store/post_store.dart';

class ListViewPost extends StatelessWidget {
  const ListViewPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posting = Provider.of<PostStore>(context, listen: false);

    return Observer(builder: (_) {
      final posty = posting.fetchRetrofitResponse?.value ?? [];
      return ListView.builder(
          itemCount: posty.length,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                RouteIdentifier.commentscreen,
                arguments: posty[index].id,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            posty[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.pushNamed(context, RouteIdentifier.editscreen),
                          icon: Icon(
                            Icons.edit,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      posty[index].body,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                ],
              ),
            );
          });
    });
  }
}
