import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class Comedy extends StatefulWidget {
  const Comedy({Key? key}) : super(key: key);

  @override
  State<Comedy> createState() => _ComedyState();
}

class _ComedyState extends State<Comedy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 20,),
              // SizedBox(
              //   height:620,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(colors: [Colors.black,Colors.transparent],begin: AlignmentDirectional.bottomCenter,
              //           end: Alignment.topCenter),
              //       //border: Border.all(color: Colors.yellow.shade200)
              //     ),
              //     child: AnotherCarousel(
              //         boxFit: BoxFit.fill,
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
              //         images: [AssetImage('assets/images/rrr.webp',),
              //           AssetImage('assets/images/raw.webp'),
              //           AssetImage('assets/images/rednotice.jpg'),
              //           AssetImage('assets/images/peakyblinders.jpg'),
              //           AssetImage('assets/images/majnu.jpg')]),
              //   ),
              // ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(80)),
                    //border: Border.all(color: Colors.white)
                  ),
                  child: Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/Anubhav%20Singh%20Bassi%20-%20Bas%20Kar%20Bassi%20_%20Official%20Trailer%20_%20%40AnubhavSinghBassi%20_%20Prime%20Video%20India.gif?alt=media&token=346718b6-3e10-4318-aa32-39f31cf254a3'))),
              Padding(padding: EdgeInsets.all(30)),
              LoadingAnimationWidget.dotsTriangle(color: Colors.yellow.shade200, size: 50),
              Padding(padding: EdgeInsets.all(20)),
              Align(
                alignment: Alignment.topLeft,
                child: Text(' Comedy',style: GoogleFonts.amaranth(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 50),),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text('Comedy Movies',style: GoogleFonts.aboreto(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
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
                          child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/meter.webp?alt=media&token=0f671c5f-57ff-4a37-82a6-60c599324dcf'))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // ElevatedButton(onPressed: (){},
                    //     style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                    //     ),
                    //     child:Image(image: AssetImage('assets/images/operation.jpg'))),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: (){},
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                        ),
                        child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/download%20(7).jpeg?alt=media&token=3bcd3a51-93ec-4f51-b0d6-d3bcb4f0b93b'),fit: BoxFit.fitHeight,)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: (){},
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                        ),
                        child:Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/rrr.webp?alt=media&token=534e0057-68bb-45b1-85fa-553f26c30673'),fit: BoxFit.fitHeight,)),
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
              // SizedBox(height: 40,),
              // Align(
              //     alignment: Alignment.topLeft,
              //     child: Text('WorldWide Action Movies',style: GoogleFonts.aboreto(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              // SizedBox(height: 20,),
              // SingleChildScrollView(
              //   // physics: ScrollPhysics(),
              //   physics: BouncingScrollPhysics(),
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         decoration: BoxDecoration(
              //             gradient: LinearGradient(colors: [Colors.black,Colors.transparent]),
              //             borderRadius: BorderRadius.all(Radius.circular(80))
              //         ),
              //         child: ElevatedButton(onPressed: (){},
              //             style: ButtonStyle(
              //               // elevation:MaterialStatePropertyAll(50),
              //               // shadowColor: MaterialStatePropertyAll(Colors.white),
              //
              //               backgroundColor: MaterialStatePropertyAll(Colors.black),
              //             ),
              //             child:Image(image: AssetImage('assets/images/raes.webp'))),
              //       ),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       ElevatedButton(onPressed: (){},
              //           style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
              //           ),
              //           child:Image(image: AssetImage('assets/images/raw.webp'),fit: BoxFit.fitHeight,)),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       ElevatedButton(onPressed: (){},
              //           style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
              //           ),
              //           child:Image(image: AssetImage('assets/images/uncharted.webp'),fit: BoxFit.fitHeight,)),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       ElevatedButton(onPressed: (){},
              //           style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
              //           ),
              //           child:Image(image: AssetImage('assets/images/murder.jpg'),fit: BoxFit.fitHeight,)),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       ElevatedButton(onPressed: (){},
              //           style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
              //           ),
              //           child:Image(image: AssetImage('assets/images/aka.jpg'),fit: BoxFit.fitHeight,)),
              //     ],
              //   ),
              // ),
              SizedBox(height: 40,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text('Award Winning Movies',style: GoogleFonts.aboreto(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
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
                          child:Image(image: NetworkImage('https://wallpapercave.com/dwp1x/wp12034927.jpg'),width:335 ,)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: (){},
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                        ),
                        child:Image(image:NetworkImage('https://images3.alphacoders.com/112/thumbbig-1129019.webp'),width: 335,)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: (){},
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                        ),
                        child:Image(image:NetworkImage('https://picfiles.alphacoders.com/473/thumb-473846.jpg'),width: 200,)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: (){},
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                        ),
                        child:Image(image: AssetImage('assets/images/murder.jpg'),fit: BoxFit.fitHeight,)),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(onPressed: (){},
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black),
                        ),
                        child:Image(image: NetworkImage('https://images4.alphacoders.com/130/thumbbig-1307467.webp'),width: 300,)),
                  ],
                ),
              ),
              SizedBox(
                height:80,
              )
            ],
          )
        ],
      ),
    );
  }
}
