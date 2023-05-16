import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
//import 'package:netflix/peakytrailer.dart';
import 'package:url_launcher/url_launcher.dart';
class red extends StatefulWidget {
  const red({Key? key}) : super(key: key);

  @override
  State<red> createState() => _redState();
}

class _redState extends State<red> {
  final Uri _url=Uri.parse('https://youtube.com/watch?v=T6l3mM7AWew');
  Future<void> _launchURl() async{
    if(!await launchUrl(_url))
    {
      throw "Cannot Launch $_url";
    }
  }
  bool _isLikedButton=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(8)),
          Image(image: AssetImage('assets/images/rednotice.gif'),fit: BoxFit.cover,),

          Column(
            children: [
              Padding(padding: EdgeInsets.all(20)),
              //Padding(padding: EdgeInsets.all(10)),
              Row(
                children: [
                  Image(image: AssetImage('assets/images/netflix1.png'),width: 30,),
                  SizedBox(
                    width: 10,
                  ),
                  Text('SERIES',style: TextStyle(
                      fontSize: 20,
                      wordSpacing: 3,
                      letterSpacing: 3,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Image(image: AssetImage('assets/images/red.png')),
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Text('Peaky Blinders',style:TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 40,color: Colors.white
              //   )),
              // ),
              // SizedBox(
              //   height:10,
              // ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('2022',style: TextStyle(fontSize:15,
                      wordSpacing: 2,
                      letterSpacing: 2,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700
                  ),),
                  SizedBox(
                    width:10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey.shade500,
                        //borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.grey.shade500,)
                    ),
                    child: Text(' A ',style:TextStyle(color: Colors.black),),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('6 Sessions',style: TextStyle(fontSize:15,
                      wordSpacing: 2,
                      letterSpacing: 2,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.transparent,
                        //borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.white,)
                    ),
                    child: Text(' HD ',style:TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 50,
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border:Border.all(color: Colors.red,width:5),
                    color: Colors.red,
                  ),
                  child: Icon(Icons.thumb_up_rounded,color: Colors.white,size: 20,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Most Liked',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),)
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 30)
                ),
                child: ElevatedButton(onPressed:(){
                  _launchURl();
                },
                    style: ButtonStyle(
                        backgroundColor:MaterialStatePropertyAll(Colors.white)
                    ),
                    child:Row(
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Icon(Icons.play_arrow,color: Colors.black,size: 30,),
                        SizedBox(
                          width:2,
                        ),
                        Text('Watch Trailer',style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  border: Border.all(width:20,color: Colors.grey.shade300,style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    Text('ABOUT',style:GoogleFonts.amaranth(
                      color: Colors.black,
                      fontSize:40,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.green,
                    ),),
                    Padding(padding: EdgeInsets.all(10)),
                    Text('It follows teenage Tanjiro Kamado, who strives to become a '
                        'Demon Slayer after his family was slaughtered and his younger sister, Nezuko, turned into a demon.',
                      style:GoogleFonts.arizonia(
                          fontWeight: FontWeight.w400,
                          fontSize:30
                      ),),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
          Row(
            children: [
              Text('  Starring:',style: TextStyle(color: Colors.grey,fontSize:15,fontWeight: FontWeight.bold),),
              Text(' Cillian Murphy,Samm Neill,Helen McCrony',style: TextStyle(color: Colors.grey,fontSize: 15),),

            ],
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.all(5)),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [

                    Text('  Creator:',style: TextStyle(color: Colors.grey,fontSize:15,fontWeight: FontWeight.bold),),

                    Text(' Steve Knight',style: TextStyle(color: Colors.grey,fontSize: 15),)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child:IconButton(onPressed: (){
                    setState(() {
                      _isLikedButton =! _isLikedButton;
                    });
                  },
                      icon:const Icon(Icons.thumb_up_off_alt_outlined),
                      iconSize: 30,
                      color: _isLikedButton? Colors.blue: Colors.red),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(' Rate',style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              Padding(padding: EdgeInsets.all(20)),
              // SizedBox(
              //   height: 250,
              //   child: AnotherCarousel(
              //       boxFit: BoxFit.fitWidth,
              //       overlayShadowColors: Colors.transparent,
              //       overlayShadow: false,
              //       dotIncreasedColor: Colors.white,
              //       dotColor: Colors.transparent,
              //       overlayShadowSize: 0,
              //       dotSpacing: 20,
              //       //animationDuration: Duration(seconds: 2),
              //       showIndicator: false,
              //       borderRadius: false,
              //       //ADD IMAGE TAP
              //       radius: Radius.circular(80),
              //       images: [AssetImage('assets/images/peaky.jpg'),
              //         AssetImage('assets/images/peaky1.jpg'),
              //         AssetImage('assets/images/p.png')
              //       ]),
              // )
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
