import 'package:mobx/mobx.dart';
part 'comment_view_model.g.dart';

class CommentViewModel = _CommentViewModelBase with _$CommentViewModel;

abstract class _CommentViewModelBase with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}
