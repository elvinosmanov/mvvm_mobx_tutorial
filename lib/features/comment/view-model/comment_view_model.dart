import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
part'comment_view_model.g.dart';

class CommentViewModel = _CommentViewModelBase with _$CommentViewModel;

abstract class _CommentViewModelBase with Store {}
