import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx/features/comment/view-model/comment_view_model.dart';

class CommentView extends StatelessWidget {
  final _modelView = CommentViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      floatingActionButton: buildFloatingActionButton(),
      body: Center(
        child: Observer(builder: (_) {
          switch (_modelView.pageState) {
            // case PageState.LOADING:
            //   return buildProgressIndicator();
            case PageState.SUCCESS:
              return buildListViewComments();
            case PageState.ERROR:
              return Center(
                child: Text("error happened"),
              );
            default:
              return Center(
                child: Text("Hello"),
              );
          }
        }),
      ),
    );
  }

  CircularProgressIndicator buildProgressIndicator() {
    return CircularProgressIndicator(
      color: Colors.green,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Elvin Osmanov App"),
      leading: Observer(builder: (_) {
        return Visibility(
            visible: _modelView.pageState == PageState.LOADING ? true : false,
            child: buildProgressIndicator());
      }),
      centerTitle: true,
    );
  }

  ListView buildListViewComments() {
    return ListView.separated(
        itemBuilder: (context, index) {
          return buildListTile(index);
        },
        separatorBuilder: (context, index) => buildDivider(),
        itemCount: _modelView.comments.length);
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _modelView.getAllPosts();
        });
  }

  Divider buildDivider() {
    return Divider(
      height: 2,
    );
  }

  ListTile buildListTile(int index) {
    return ListTile(
      title: Text(_modelView.comments[index].name),
      subtitle: Text(_modelView.comments[index].body),
      leading: Text(_modelView.comments[index].id.toString()),
      trailing: Text(_modelView.comments[index].email),
    );
  }
}
