import 'package:ciss_task/board.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'mentors.dart';

void main() {
  runApp(const MyApp());
}
int commentsNumber =0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false ,
      home: CisTask() ,

    );
  }
}

class CisTask extends StatefulWidget {
  const CisTask({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<CisTask> createState() => _CisTaskState();
}

class _CisTaskState extends State<CisTask> {

    void selectScreen( BuildContext ctx, int n){
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_){
        if (n==1) return Board();
        return Mentors();
      }));
    }

  List images = [
    "assets/images/gate.jpg",
    "assets/images/chess.jpg",
    "assets/images/generation.jpg",
  ];
  var mainclr = Color.fromARGB(255, 44, 226, 185);
  int _currentIndex= 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:const Color.fromARGB(220, 7, 7, 7),
      appBar: AppBar(
        iconTheme:const IconThemeData(
            color: Colors.white
        ) ,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("CIS Team", style: TextStyle(color: mainclr, fontSize: 20 , fontWeight: FontWeight.bold),),
        centerTitle: true,

      ),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
         const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Our Events",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 17,
              ),
            ),
          ),
         const SizedBox(height: 10,),
          CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, indx) {
              return Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: ClipRRect(
                   borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              images[index],
                             width: double.maxFinite,
                            fit: BoxFit.fill,
                         ),
                         ),
                         );
            },
            options: CarouselOptions(
                initialPage: 0,
                height: 200,
                onPageChanged: (index, _) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                autoPlayCurve: Curves.easeIn,

              viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
                ),
          ),
        const  SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              slider(0),
              slider(1),
              slider(2)
            ],
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Our New Posts",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                  ),
                ),
                TextButton(
                  onPressed: () {

                  },
                  child:  Text(
                    "See All",
                    style: TextStyle(color: mainclr, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              children: [InkWell( onTap: (){selectScreen(context, 2);},
                                child: Container( margin: const EdgeInsets.all(10),
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(150, 83, 90, 88),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Expanded(
                                  child: Container(
                                    height: 100,
                                  decoration: const BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(20),
                                      topEnd: Radius.circular(20),

                                  ),

                                  ),
                                  child: ClipRRect(
                                    borderRadius:const BorderRadiusDirectional.only( topStart: Radius.circular(20),
                                      topEnd: Radius.circular(20),),
                                  child: Image.network(
                                  "assets/images/mentors.jpg",
                                  fit: BoxFit.cover,
                                  ),
                                  ),
                                  ),
                                  ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal:12, vertical:2),
                                      child:Text(
                                        "Technical Squads",
                                        textAlign: TextAlign.start
                                        ,style: TextStyle(
                                            color: Colors.white,


                                            fontSize: 12),
                                      ),
                                    ),
                                     Padding(
                                      padding:const EdgeInsets.symmetric(horizontal: 12,vertical:4),
                                      child:Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                     child: Row(
                                            children: [

                                            const Icon(Icons.thumb_up_alt_outlined, color: Colors.white60,size: 15,),
                                              const SizedBox(
                                                width: 3,
                                              ),
                                              dots(),
                                              const SizedBox(
                                                width: 3,
                                              ),
                                              const Icon(Icons.comment_outlined, color: Colors.white60,size: 15,),
                                              const SizedBox(
                                                width: 3,
                                              ),
                                              Text(
                                                "${commentsNumber}",
                                                style: const TextStyle(color: Colors.white60,fontSize: 12),
                                              ),




                                            ],
                                          ),
                                          ),
                                         Icon(Icons.arrow_forward_outlined, color:mainclr,size: 15,),

                                        ],
                                      )
                                    ),


                                  ])
                                ),
                              ),
                                InkWell(onTap:(){selectScreen(context, 1);} ,
                                  child: Container( margin: const EdgeInsets.all(10),
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(150, 83, 90, 88),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 50,
                                                decoration: const BoxDecoration(
                                                  borderRadius: BorderRadiusDirectional.only(
                                                    topStart: Radius.circular(20),
                                                    topEnd: Radius.circular(20),

                                                  ),

                                                ),
                                                child: ClipRRect(
                                                  borderRadius:const BorderRadiusDirectional.only( topStart: Radius.circular(20),
                                                    topEnd: Radius.circular(20),),
                                                  child: Image.network(
                                                    "assets/images/board.jpg",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(horizontal:12, vertical:2),
                                              child:Text(
                                                "Board 2023",
                                                textAlign: TextAlign.start
                                                ,style: TextStyle(
                                                  color: Colors.white,


                                                  fontSize: 12),
                                              ),
                                            ),
                                            Padding(
                                                padding:const EdgeInsets.symmetric(horizontal: 12,vertical:4),
                                                child:Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [

                                                          const Icon(Icons.thumb_up_alt_outlined, color: Colors.white60,size: 15,),
                                                          const SizedBox(
                                                            width: 3,
                                                          ),
                                                          dots(),
                                                          const SizedBox(
                                                            width: 3,
                                                          ),
                                                          const Icon(Icons.comment_outlined, color: Colors.white60,size: 15,),
                                                          const SizedBox(
                                                            width: 3,
                                                          ),
                                                          Text(
                                                            "${commentsNumber}",
                                                            style: const TextStyle(color: Colors.white60,fontSize: 12),
                                                          ),




                                                        ],
                                                      ),
                                                    ),
                                                    Icon(Icons.arrow_forward_outlined, color:mainclr,size: 15,),

                                                  ],
                                                )
                                            ),


                                          ])
                                  ),
                                )
                              ],
                            )
        )





        ],


      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:const Color.fromARGB(220, 7, 7, 7),
        selectedItemColor: mainclr,
        unselectedItemColor: Colors.white,

        items:const [BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_rounded),label: "Events" ),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: "Committees" ),
          BottomNavigationBarItem(icon: Icon(Icons.backup_table_rounded),label: "Blogs" ),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_rounded),label: "Videos" ),
        ],

      ) ,
    );

  }

  Container dots() {
    return Container(width: 4,height: 4,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: mainclr
                                          ),
                                        );
  }

  Container slider(ind) {
    return Container(
              width: 10,
              height: 10,
              margin:const EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                    color: _currentIndex== ind ? mainclr: Colors.white,
              ),
            );
  }
}
