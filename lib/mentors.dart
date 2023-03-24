import 'package:ciss_task/posts.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Mentors extends StatefulWidget{
  @override

  @override
  State<Mentors> createState() =>  _MentorsState();

}
var  mainclr = Color.fromARGB(255, 44, 226, 185);
class _MentorsState extends  State<Mentors>{
  final GlobalKey<FormState> _formkey = GlobalKey();
  final TextEditingController nameController = TextEditingController();

  final TextEditingController commentController = TextEditingController();
  String nam ="";
  @override
  Widget build(BuildContext context) {
    return(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor:const Color.fromARGB(220, 7, 7, 7),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme:const IconThemeData(color: Colors.white),
            ),
            body:Form(
              key: _formkey,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                    children: [
                      Container(height: 250, width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:  ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              post[0].img,
                              fit: BoxFit.cover,
                            ),
                          )),
                      const  SizedBox(height:15,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(post[0].title, style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                        ],
                      ),
                      const  SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius:10,
                            child: Image.network("assets/images/cis.jpg"),
                          ),
                          const  SizedBox(width: 3,),
                          const  Text(
                            "CIS Team", style: TextStyle(color: Colors.white60,fontSize: 12), textAlign: TextAlign.start,),
                          SizedBox(width: 3,),
                          dots(),
                          Text(post[1].date, style: TextStyle(fontSize: 15, color: Colors.white60, fontWeight: FontWeight.bold),),
                          dots(),
                          const  SizedBox(width: 3,),
                          const Icon(Icons.comment_outlined, color: Colors.white60,size: 15,),
                          Text(
                            "${commentsNumber}",
                            style: const TextStyle(color: Colors.white60,fontSize: 12),
                          ),

                        ],),
                      const   SizedBox(height: 20,),
                      Text(post[0].caption,
                        style: const TextStyle(color: Colors.white,fontSize: 15),),
                      const SizedBox(height: 30,),
                      SizedBox( width: double.maxFinite,
                        child: TextFormField(
                          style:const TextStyle(color: Colors.white,),
                          decoration: const InputDecoration(
                              hintText: 'Your Name',
                              hintStyle:TextStyle(color: Colors.white70),
                              fillColor: Color.fromARGB(130, 203, 198, 198) ,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0, color: Color.fromARGB(
                                      130, 203, 198, 198)),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              )
                          ),
                          controller: nameController,

                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox( width: double.maxFinite,
                        child: TextFormField(
                          style:const TextStyle(color: Colors.white,),
                          decoration:const InputDecoration(
                              hintText: 'Comment',
                              hintStyle: TextStyle(color: Colors.white70),
                              fillColor: Color.fromARGB(130, 203, 198, 198) ,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0, color: Color.fromARGB(
                                      130, 203, 198, 198)),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              )
                          ),
                          controller: commentController,

                          maxLength: 255,
                          maxLines: 3,
                        ),
                      ),
                      const   SizedBox(height: 5,),
                      SizedBox(height: 40,width: 200,
                        child:ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:mainclr,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: (){
                            nam = nameController.text;

                            Fluttertoast.showToast(
                              msg: "Thank you $nam",
                                timeInSecForIosWeb: 2,
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.CENTER,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );


                          },
                          child:  const Text(
                            "SEND",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),

                          ),
                        ) ,)





                    ],
                  ),
                ),


              ),
            ),
          ),
        )
    );
  }

}
Container dots() {
  return Container(width: 4,height: 4,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: mainclr
    ),
  );
}
