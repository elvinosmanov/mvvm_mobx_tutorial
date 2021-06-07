import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx/features/comment/view-model/comment_view_model.dart';

class CommentView extends StatelessWidget {
  final modelView = CommentViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          modelView.increment();
        },
      ),
      appBar: AppBar(
        title: Text('MVVM and Mobx'),
      ),
      body: Center(child: Observer(builder: (_) {
        return Text(modelView.count.toString());
      })),
    );
  }
}
