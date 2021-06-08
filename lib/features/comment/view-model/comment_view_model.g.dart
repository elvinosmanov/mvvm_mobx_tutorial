// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CommentViewModel on _CommentViewModelBase, Store {
  final _$pageStateAtom = Atom(name: '_CommentViewModelBase.pageState');

  @override
  PageState get pageState {
    _$pageStateAtom.reportRead();
    return super.pageState;
  }

  @override
  set pageState(PageState value) {
    _$pageStateAtom.reportWrite(value, super.pageState, () {
      super.pageState = value;
    });
  }

  final _$commentsAtom = Atom(name: '_CommentViewModelBase.comments');

  @override
  List<Comment> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(List<Comment> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$getAllPostsAsyncAction =
      AsyncAction('_CommentViewModelBase.getAllPosts');

  @override
  Future<void> getAllPosts() {
    return _$getAllPostsAsyncAction.run(() => super.getAllPosts());
  }

  @override
  String toString() {
    return '''
pageState: ${pageState},
comments: ${comments}
    ''';
  }
}
