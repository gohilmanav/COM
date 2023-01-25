import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts/Repo/Post_repo.dart';
import 'package:posts/Ui/Homepage/HomePage.dart';
import 'package:posts/Ui/Splashscreen/Splashscreen.dart';
import 'package:posts/bloc/posts_bloc/Posts_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: 
      MultiBlocProvider(providers: [
        BlocProvider<postsbloc>(
          create: (BuildContext context) => postsbloc(repo:PostRepoImpl() ),
        )
      ], child: HomePage(),
    ),
      debugShowCheckedModeBanner: false,
    );
  }
}
