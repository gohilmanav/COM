import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts/bloc/posts_bloc/Posts_Stats.dart';
import 'package:posts/bloc/posts_bloc/Posts_bloc.dart';
import 'package:posts/widget/post_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late postsbloc Postsbloc;
  @override
  void initState() {
    Postsbloc = context.read<postsbloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: AppBar(
          elevation: 0.2,
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          title: Center(
            child: Text(
              "      Posts",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          actions: [
            IconButton(onPressed: () => context, icon: Icon(Icons.list))
          ],
        ),
        body: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: BlocBuilder<postsbloc, PostStats>(
              builder: (context, state) {
                if (state is PostInitialState || state is PostLoadingState) 
                  return CircularProgressIndicator(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                  );
                
               else if (state is PostLoadedState) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Expanded(
                        child: ListView.separated(
                      itemCount: state.massage.length,
                      itemBuilder: (context, index) {
                        return  Postwidget(postModel1:state.massage[index]);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 20,
                        );
                      },
                    )),
                  );
                }
               else if (state is NoPostStates || state is PostErrorState) {
                  return Text(state.toString());
                }
               else return Container();
              },
            ),
          ),
        
        ));
  }
}

 //      Column(
      //   children: [
      //     Card(
      //       elevation: 8.0,
      //       margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      //       child: Container(
      //         decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
           
      //       ),
      //     ),
      //   ],
      // )
  //  Padding(
  //                     padding: const EdgeInsets.all(5),
  //                     child: Container(
  //                       height: 250,
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(15),
  //                         child: ListView.separated(
  //                           scrollDirection: Axis.horizontal,
  //                           itemCount: .FeaturedArtistsList.length,
  //                           itemBuilder: (context, index) {
  //                             return FeaturedAirtistsWidget(
  //                                 featuredArtistsModel:
  //                                     state.FeaturedArtistsList[index]);
  //                           },
  //                           separatorBuilder:
  //                               (BuildContext context, int index) {
  //                             return SizedBox(
  //                               height: 50,
  //                             );
  //                           },
  //                         ),
  //                       ),
  //                     ),
  //                   )
   //     Align(alignment: Alignment.center,
        //       child: BlocBuilder<postsbloc,PostStats>(builder:( Context, State ){
        //              if (state is PostInitialState || state is PostLoadingState) {
        //            return CircularProgressIndicator(
        //               backgroundColor: Colors.black,
        //               color: Colors.white,
        //             );

        //       }
        //       if (state is PostLoadedState) {
        //          return Padding(
        //             padding: const EdgeInsets.all(20),
        //             child: Expanded(
        //                 child: ListView.separated(
        //               itemCount: state.list.length,
        //               itemBuilder: (context, index) {
        //                 return Bloc(Postmodel: state.list[index]);
        //               },
        //               separatorBuilder: (BuildContext context, int index) {
        //                 return SizedBox(
        //                   height: 20,
        //                 );
        // })))} }),
        //     ),