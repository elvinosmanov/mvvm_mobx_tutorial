import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:mvvm_mobx/features/comment/model/comment.dart';
part 'comment_view_model.g.dart';

class CommentViewModel = _CommentViewModelBase with _$CommentViewModel;

abstract class _CommentViewModelBase with Store {
  @observable
  PageState pageState = PageState.NORMAL;
  @observable
  List<Comment> comments = [];

  final String url = "https://jsonplaceholder.typicode.com/comments";
  @action
  Future<void> getAllPosts() async {
    try {
      pageState = PageState.LOADING;
      final response = await Dio().get(url);
      if (response.statusCode == HttpStatus.ok) {
        final responseItem = response.data as List;
        comments = responseItem.map((e) => Comment.fromJson(e)).toList();
      }
      pageState = PageState.SUCCESS;
    } catch (e) {
      pageState = PageState.ERROR;
    }
  }
}

enum PageState { NORMAL, LOADING, SUCCESS, ERROR }
