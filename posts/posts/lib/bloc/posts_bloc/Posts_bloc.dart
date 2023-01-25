import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts/Model/Post_Model.dart';
import 'package:posts/Repo/Post_repo.dart';
import 'package:posts/bloc/posts_bloc/Posts_Stats.dart';
import 'package:posts/bloc/posts_bloc/Posts_event.dart';

class postsbloc extends Bloc<Postevent, PostStats> 
{
  PostRepoImpl repo;
  postsbloc({required this.repo}) : super(PostInitialState()) {
    on<FetchPostevent>(_onFetchPostEvent);
  }

  _onFetchPostEvent(FetchPostevent event, Emitter<PostStats> emit) async {
    try {
      emit(PostLoadingState());
      List<PostsModel> massage = await repo.getPosts();
      if (massage.isEmpty) {
        emit(NoPostStates());
      } else {
        emit(PostLoadedState(massage: massage));
      }
    } on SocketException {
       emit(postNoInternetState());
    }chtch(e){
      emit(PostErrorState(message: e.toString()));
    }
  }

  chtch(e) {}
}
