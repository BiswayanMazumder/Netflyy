

import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:netflix/Horro.dart';
import 'package:netflix/action.dart';
import 'package:netflix/brandnewcherryflavour.dart';
import 'package:netflix/comedy.dart';
import 'package:netflix/crime.dart';
import 'package:netflix/demon_slayer.dart';
import 'package:netflix/godfather.dart';
import 'package:netflix/linclnlawyer.dart';
import 'package:netflix/main.dart';
import 'package:netflix/peakyblinders.dart';
import 'package:netflix/profile.dart';
import 'package:netflix/rednotice.dart';
import 'package:netflix/romance.dart';
import 'package:netflix/strangerthings.dart';
import 'package:neon/neon.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        automaticallyImplyLeading: false,
        leading: Image.asset('assets/images/appstore-removebg-preview.png',width: 100,filterQuality: FilterQuality.high,
          colorBlendMode: BlendMode.lighten,
        ),
        actions: [
          IconButton(onPressed: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),

            );
          },
              icon:Icon(Icons.logout_rounded)
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      //extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),

        );
      },
        splashColor: Colors.white,
        elevation: 10,
        highlightElevation: 50,
        focusColor: Colors.blue,
      child: CircleAvatar(foregroundImage: NetworkImage('https://img.freepik.com/free-vector/handsome-man_1308-85984.jpg',),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
        //radius:90,
        minRadius: 50,
        maxRadius: 90,
      ),),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          // Neon(text:'NETFLY', color:Colors.yellow, font:NeonFont.Cyberpunk,flickeringLetters: [],textStyle: TextStyle(
          //   fontSize: 100,fontWeight: FontWeight.bold
          // ),
          // blurRadius:5,
          // fontSize:50,flickeringText: true,),
          Padding(padding: EdgeInsets.all(10)),
          Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/Peaky%20Blinders%20_%20Season%205%20Trailer%20_%20Netflix.gif?alt=media&token=c55bbe61-a6ac-4e44-860c-13fcb57a0581'),
          width: 500,
            height: 900,
            fit: BoxFit.fitHeight,
            filterQuality: FilterQuality.high,
            gaplessPlayback: true,
            colorBlendMode: BlendMode.color,
          ),
          Align(
            alignment:Alignment.topRight,
            child: Row(
              children: [
                SizedBox(width: 290),
                IconButton(onPressed:() async{
                  await player.setSourceUrl('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/peaky-theme-song.mp3?alt=media&token=010a30bb-511d-459d-85d9-4b9489e7a485'); // equivalent to setSource(UrlSource(url));;
                  await player.resume();
                  await player.setVolume(2.0);// right channel only

                }, icon:Icon(AkarIcons.play),color: Colors.white,hoverColor: Colors.green,),
                IconButton(onPressed: () async{
                  await player.pause();
                },
                    icon:Icon(AkarIcons.pause),color: Colors.white,hoverColor: Colors.blue,)
              ],
            )
          ),
          //Text('Red Notice',style: TextStyle(color: Colors.white),),
          // SizedBox(
          //   height:620,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       gradient: LinearGradient(colors: [Colors.black,Colors.transparent],begin: AlignmentDirectional.bottomCenter,
          //       end: Alignment.topCenter),
          //       //border: Border.all(color: Colors.yellow.shade200)
          //     ),
          //     child: AnotherCarousel(
          //       boxFit: BoxFit.fitWidth,
          //         overlayShadowColors: Colors.transparent,
          //         overlayShadow: false,
          //         dotIncreasedColor: Colors.white,
          //         dotColor: Colors.transparent,
          //         overlayShadowSize: 0,
          //         dotSpacing: 20,
          //         showIndicator: false,
          //         borderRadius: false,
          //         //ADD IMAGE TAP
          //         radius: Radius.circular(80),
          //         images: [AssetImage('assets/images/capap.jpg'),
          //       AssetImage('assets/images/download (3).jpeg'),
          //         AssetImage('assets/images/ae_digital_packshot.jpg'),
          //         AssetImage('assets/images/peakyblinders.jpg'),
          //         AssetImage('assets/images/antmanandthewaspquantumania_lob_crd_03.jpg')]),
          //   ),
          // ),
          Padding(padding: EdgeInsets.all(20)),
          Text('  Categories',style: GoogleFonts.abhayaLibre(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white
          ),),
          Padding(padding: EdgeInsets.all(10)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.grey.shade100,width:2.5),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Actionpage()),

                    );
                  },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
                        elevation:MaterialStatePropertyAll(0),
                      ),
                      child:Text('Action',style: TextStyle(fontSize: 20,
                      color: Colors.black),))
                ),
                SizedBox(width: 10,),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border.all(color: Colors.grey.shade100,width:2.5),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Comedy()),

                      );
                    },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
                          elevation:MaterialStatePropertyAll(0),
                        ),
                        child:Text('Comedy',style: TextStyle(fontSize: 20,
                            color: Colors.black),))
                ),
                SizedBox(width: 10,),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border.all(color: Colors.grey.shade100,width:2.5),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Romance()),

                      );
                    },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
                          elevation:MaterialStatePropertyAll(0),
                        ),
                        child:Text('Romance',style: TextStyle(fontSize: 20,
                            color: Colors.black),))
                 ),
                // SizedBox(width: 10,),
                // Container(
                //     decoration: BoxDecoration(
                //         color: Colors.grey.shade100,
                //         border: Border.all(color: Colors.grey.shade100,width:1.5),
                //         borderRadius: BorderRadius.all(Radius.circular(20))
                //     ),
                //     child: ElevatedButton(onPressed: (){},
                //         style: ButtonStyle(
                //           backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
                //           elevation:MaterialStatePropertyAll(0),
                //         ),
                //         child:Text('Sci-fi',style: TextStyle(fontSize: 20,
                //             color: Colors.black),))
                // ),
                SizedBox(width: 10,),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border.all(color: Colors.grey.shade100,width:2.5),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CrimePage()),

                      );
                    },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
                          elevation:MaterialStatePropertyAll(0),
                        ),
                        child:Text('Crime',style: TextStyle(fontSize: 20,
                            color: Colors.black),))
                ),
                SizedBox(width: 10,),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border.all(color: Colors.grey.shade100,width:2.5),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HorrorPage()),

                      );
                    },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
                          elevation:MaterialStatePropertyAll(0),
                        ),
                        child:Text('Horror',style: TextStyle(fontSize: 20,
                            color: Colors.black,
                        //fontWeight: FontWeight.bold
                        ),))
                ),
                SizedBox(width: 10,)
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            children: [
            Text('   Most Popular',style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            // physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.black,Colors.transparent]),
                    borderRadius: BorderRadius.all(Radius.circular(80))
                  ),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Peaky()),

                    );
                  },
                      style: ButtonStyle(
                        // elevation:MaterialStatePropertyAll(50),
                        // shadowColor: MaterialStatePropertyAll(Colors.white),

                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/peaky.jpg?alt=media&token=d7707805-d2ee-44af-82e1-b5c0012c28dd'))),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lincoln()),

                  );
                },
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/lawyer.jpg?alt=media&token=26cd2a53-69b4-46a8-92da-e73132a8595a'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Stranger()),

                  );
                },
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/stranger.jpg?alt=media&token=7c3250e7-cfab-455c-bc27-7e8061d0a477'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Godfather()),

                  );
                },
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/godfather.webp?alt=media&token=02cbbbae-87b3-47c2-820e-7ba43e697023'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const cherry()),

                  );
                },
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/cherry.jpg?alt=media&token=18738809-d398-4108-b701-d90c463dd96a'),fit: BoxFit.fitHeight,)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Text('   Latest Movies',style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            // physics: ScrollPhysics(),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black,Colors.transparent]),
                      borderRadius: BorderRadius.all(Radius.circular(80))
                  ),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const demon()),

                    );
                  },
                      style: ButtonStyle(
                        // elevation:MaterialStatePropertyAll(50),
                        // shadowColor: MaterialStatePropertyAll(Colors.white),

                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/demon.webp?alt=media&token=1e1cdac0-150d-4222-a892-b3ca1d3b72f2'))),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const red()),

                  );
                },
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/rednotice.jpg?alt=media&token=107154b6-0534-4ffd-97e5-925fe1dda7c1'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/uncharted.webp?alt=media&token=d38706dc-b4e3-46e0-bed3-f9661a88c2c2'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/extraction.jpg?alt=media&token=e06d67c9-fb20-4fcd-9631-c42c4fc9ab36'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/sa.webp?alt=media&token=b684c661-3e97-462f-8a03-2b76cff45152'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/AAAABd4fU4p69WGhbyk1yLS4E3USTV6R8RfeMA9pEpS2ahp4iQbBQwxW9PbJufEE1sksQME5y93VGInhx1wA1OLkBSS0PP0qcXxvwPM.webp?alt=media&token=668e4489-799f-47d5-be30-9cd4eb984934'),fit: BoxFit.fitHeight,)),

              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Text('   Casual Viewing',style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            // physics: ScrollPhysics(),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black,Colors.transparent]),
                      borderRadius: BorderRadius.all(Radius.circular(80))
                  ),
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        // elevation:MaterialStatePropertyAll(50),
                        // shadowColor: MaterialStatePropertyAll(Colors.white),

                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/seinfield.webp?alt=media&token=cc408c7d-380e-48fe-9e30-3e0ababb3e43'))),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image:NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/amsterdam.webp?alt=media&token=f06c8372-7210-4fc3-ba62-9362af74ae84'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/toohottohandle.jpg?alt=media&token=3b47e4fc-d400-42d1-8acd-f98950327a2b'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image:NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/brooklyn.webp?alt=media&token=ac699eff-3e2f-4383-a636-6970da9a8bb2'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/twoandahald.webp?alt=media&token=6aa3f08a-090a-4893-836a-dcf66aa45449'),fit: BoxFit.fitHeight,)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Text('   Anime',style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            // physics: ScrollPhysics(),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black,Colors.transparent]),
                      borderRadius: BorderRadius.all(Radius.circular(80))
                  ),
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        // elevation:MaterialStatePropertyAll(50),
                        // shadowColor: MaterialStatePropertyAll(Colors.white),

                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child:Image(image:NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/anime5.webp?alt=media&token=65e06ac6-182c-4f4c-a735-ec2a1b2b9f51'))),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/anime1.webp?alt=media&token=657bfbe3-9b51-41eb-9e58-ffa09ed8e57b'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/anime2.webp'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/anime3.webp?alt=media&token=734e9439-bb7c-4e61-9eb6-5c6aaa9e2fe5'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/anime4.webp?alt=media&token=21d4575c-09ac-43d6-9a2a-1b8e6846fc19'),fit: BoxFit.fitHeight,)),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/anime6.webp'),fit: BoxFit.fitHeight,)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Text('   Crime Dramas'
                  ,style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            // physics: ScrollPhysics(),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black,Colors.transparent]),
                      borderRadius: BorderRadius.all(Radius.circular(80))
                  ),
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        // elevation:MaterialStatePropertyAll(50),
                        // shadowColor: MaterialStatePropertyAll(Colors.white),

                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child:Image(image: AssetImage('assets/images/breakingbad.webp'))),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/survivor.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/saul.webp'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/drugs.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/delhi.jpg'),fit: BoxFit.fitHeight,)),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/AAAABUqTp4_WGRciGmumPaHG8d9VZ21lXEGwhAo3FXnY9HEvhjram5HguvL'
                        'FpJ5UJthtEpaYL-yxfon9dU19bWIyXFYX91IwuFmGIPs9sjznNqBQe608ThsPhSgYi8gQ0aIcA5-kR7ERlqlVWpmiraaHBP7r_'
                        'o98veay7c0wx-HzD3VQFLlV54s9ToVnCoT678C6fueTY5LYa_WV.webp'),fit: BoxFit.fitHeight,)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Text('   English Movies'
                ,style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            // physics: ScrollPhysics(),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black,Colors.transparent]),
                      borderRadius: BorderRadius.all(Radius.circular(80))
                  ),
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        // elevation:MaterialStatePropertyAll(50),
                        // shadowColor: MaterialStatePropertyAll(Colors.white),

                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child:Image(image: AssetImage('assets/images/otto.webp'))),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/godzilla.webp'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/sexeducation.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/money.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/lucifer.jpg'),fit: BoxFit.fitHeight,)),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/kota.jpg'),fit: BoxFit.fitHeight,)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Text('   Hindi Movies And TV'
                ,style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            // physics: ScrollPhysics(),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black,Colors.transparent]),
                      borderRadius: BorderRadius.all(Radius.circular(80))
                  ),
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        // elevation:MaterialStatePropertyAll(50),
                        // shadowColor: MaterialStatePropertyAll(Colors.white),

                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child:Image(image: AssetImage('assets/images/kota.jpg'))),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/jamtara.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/tara.webp'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/delhi.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/bhool.webp'),fit: BoxFit.fitHeight,)),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/kabhi.webp'),fit: BoxFit.fitHeight,)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Text('   Documentaries'
                ,style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            // physics: ScrollPhysics(),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black,Colors.transparent]),
                      borderRadius: BorderRadius.all(Radius.circular(80))
                  ),
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        // elevation:MaterialStatePropertyAll(50),
                        // shadowColor: MaterialStatePropertyAll(Colors.white),

                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child:Image(image: AssetImage('assets/images/doc1.jpg'))),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/doc2.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/doc3.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/doc4.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/doc5.jpg'),fit: BoxFit.fitHeight,)),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child:Image(image: AssetImage('assets/images/doc6.jpg'),fit: BoxFit.fitHeight,)),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(30)),
          LoadingAnimationWidget.flickr(leftDotColor: Colors.yellow.shade200, rightDotColor: Colors.white, size:80),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
