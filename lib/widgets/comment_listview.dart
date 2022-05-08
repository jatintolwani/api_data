import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../store/comment_store.dart';

class CommentListView extends StatelessWidget {
  final int id;
  const CommentListView({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final commenting = Provider.of<CommentStore>(context, listen: false);
    commenting.getCommentFromRetrofit(id);
    return Observer(builder: (_) {
      final commenty = commenting.fetchRetrofitCommentResponse?.value ?? [];
      return ListView.builder(
          itemCount: commenty.length,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () => {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      commenty[index].body,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
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
