import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:training_app/home_page.dart';
import 'colors.dart' as color;
class VideoInfo extends StatefulWidget {
   const VideoInfo({Key? key}) : super(key: key);

   @override
   State<VideoInfo> createState() => _VideoInfoState();
 }

 class _VideoInfoState extends State<VideoInfo> {

   List videoinfo=[];
   _initData(){
     DefaultAssetBundle.of(context).loadString("json/videoinfo.json")
         .then((value){
       videoinfo=json.decode(value);
     });
   }

   @override
   void initState(){
     super.initState();
     _initData();
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: [
               color.gradientFirst.withOpacity(0.9),
               color.gradientSecond,
             ],
             begin: const FractionalOffset(0.0, 0.4),
             end: Alignment.topRight,
           ),
         ),
         child: Column(
           children: [
             Container(
               padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
               width: MediaQuery.of(context).size.width,
               height: 300,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       InkWell(
                         onTap: (){
                           Get.to(()=>HomePage());
                         },
                         child: Icon(
                           Icons.arrow_back_ios,
                             size:20,
                           color: color.secondPageIconColor,
                         ),
                       ),
                       Expanded(child: Container()),
                       Icon(
                         Icons.info_outline,
                         size:20,
                         color: color.secondPageIconColor,
                       ),
                     ],
                   ),
                   const SizedBox(height: 30,),
                   Text(
                     "Legs Toning",
                     style: TextStyle(
                       fontSize: 25,
                       color: color.secondPageTitleColor,
                     ),
                   ),
                   const SizedBox(height: 5,),
                   Text(
                     "and Glutes Workout",
                     style: TextStyle(
                       fontSize: 25,
                       color: color.secondPageTitleColor,
                     ),
                   ),
                   const SizedBox(height: 50,),
                   Row(
                     children: [
                       Container(
                         width: 90,
                         height: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           gradient: LinearGradient(
                             colors: [
                               color.secondPageContainerGradient1stColor,
                               color.secondPageContainerGradient2ndColor,
                             ],
                             begin: Alignment.bottomLeft,
                             end: Alignment.topRight,
                           ),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(
                               Icons.timer_outlined,
                               size: 20,
                                 color: color.secondPageIconColor,
                             ),
                             const SizedBox(width: 5,),
                             Text(
                               "68 min",
                               style: TextStyle(
                                 color: color.secondPageIconColor,
                                 fontSize: 16,
                               ),
                             ),
                           ],
                         ),

                       ),
                       const SizedBox(width: 20,),
                       Container(
                         width: (MediaQuery.of(context).size.width)-60-90-30,
                         height: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           gradient: LinearGradient(
                             colors: [
                               color.secondPageContainerGradient1stColor,
                               color.secondPageContainerGradient2ndColor,
                             ],
                             begin: Alignment.bottomLeft,
                             end: Alignment.topRight,
                           ),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(
                               Icons.handyman_outlined,
                               size: 20,
                               color: color.secondPageIconColor,
                             ),
                             const SizedBox(width: 5,),
                             Text(
                               "Resistent band, kettebell",
                               style: TextStyle(
                                 color: color.secondPageIconColor,
                                 fontSize: 16,
                               ),
                             ),
                           ],
                         ),

                       ),
                     ],
                   ),
                 ],
               ),
             ),
             Expanded(
               child: Container(
                 decoration: const BoxDecoration(
                     color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(70),
                   ),
                 ),
                 child: Column(
                   children: [
                     const SizedBox(height: 30,),
                     Row(
                       children: [
                         const SizedBox(width: 30,),
                         Text(
                             "Circuit 1: Legs Toning",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                             color: color.circuitsColor,
                           ),
                         ),
                         Expanded(child: Container()),
                         Row(
                           children: [
                             Icon(
                               Icons.loop,
                               size: 30,
                                 color: color.secondPageTopIconColor,
                             ),
                             const SizedBox(width: 5,),
                             Text(
                               "3 sets",
                               style: TextStyle(
                                 fontSize: 15,
                                 color: color.setsColor,
                               ),
                             ),
                           ],
                         ),
                         const SizedBox(width: 20,),
                       ],
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }
 }
