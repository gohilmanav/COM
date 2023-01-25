import 'package:equatable/equatable.dart';
import 'package:posts/Model/Post_Model.dart';

abstract class PostStats extends Equatable {}

class PostInitialState extends PostStats {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object?> get props => [];
}
class postNoInternetState extends PostStats {
  @override
  List<Object?> get props => [];
}

class PostLoadingState extends PostStats {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class PostLoadedState extends PostStats {
  
  List<PostsModel> massage;
 
  
  PostLoadedState({required this.massage});
  List<Object?> get props => [this.massage];
}
class NoPostStates extends PostStats {
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    return "No Post Data Available";
  }
}


class PostErrorState extends PostStats {
  final String message;
  PostErrorState({required this.message});
  @override
  // ignore: todo
  // TODO: implement props
  List<Object?> get props => [this.message];
  @override
  String toString() {
    return message;
  }
}
