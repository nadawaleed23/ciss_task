import 'package:flutter/cupertino.dart';

class Posts{
final String img;
final String title;
final String date;
final String caption;
Posts({required this.img, required this.title, required this .caption , required this.date });


}
List post= [
  Posts(img:"assets/images/mentors.jpg" , title: "Technical Squad 2023", caption:  '''“ Our new Mentors are ready to complete the journey “
مُتفقين دائمًا إن الأهم من اكتساب المعلومة هي إنها متقفش عندنا وبس، عشان كده جه وقت إننا نعلن عن المينتوز الجُدد الّي قرروا يكملوا الطريق، ويمهدوا طُرق جديدة لناس اكتر.
#Technical_Squads
#CIS_Team''', date: "2022-11-26")
  ,Posts(img: "assets/images/board.jpg", title:"Board 2023" , caption: '''" نَخوضُ الدَربَ مُجَددًا، وَلِتَكُن معَالِمُه أفرادً سَائِرين نَحوكَ دَائِمًا "
بداية جديدة بنوايا طيبة، بنبدأها مع قادة جُدد قرروا يضيفوا و يسيبوا أثر جميل، زي الّي اكتسبوه من ناس كتير قبلهم.
#Board_2023
#CIS_Team''', date:"2022-11-26")
];