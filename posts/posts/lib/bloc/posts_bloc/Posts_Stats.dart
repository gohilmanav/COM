import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:posts/Model/Post_Model.dart';

abstract class PostStats extends Equatable {}

class PostInitialState extends PostStats {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class postNoInternetState extends PostStats {
  @override
  List<Object?> get props => [];
}

class PostLoadingState extends PostStats {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class PostLoadedState extends PostStats {
  
  List<Postmodel> massage;
  
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
  // TODO: implement props
  List<Object?> get props => [this.message];
  @override
  String toString() {
    return message;
  }
}
