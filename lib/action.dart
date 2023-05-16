import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Actionpage extends StatefulWidget {
  const Actionpage({Key? key}) : super(key: key);

  @override
  State<Actionpage> createState() => _ActionpageState();
}

class _ActionpageState extends State<Actionpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
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
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    //border: Border.all(color: Colors.white)
                  ),
                  child: Image(
                      image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.'
                          'appspot.com/o/Peaky%20Blinders%20_%20Season%205%20Trailer%20_%20Netflix.gif?alt=media&token=c55bbe61-a6ac-4e44-860c-13fcb57a0581'))),
              Padding(padding: EdgeInsets.all(30)),
              LoadingAnimationWidget.dotsTriangle(
                  color: Colors.yellow.shade200, size: 50),
              Padding(padding: EdgeInsets.all(20)),
              Text(
                'Action And Adventure',
                style: GoogleFonts.amaranth(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Indian Action Movies',
                    style: GoogleFonts.aboreto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
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
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.transparent]),
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            // elevation:MaterialStatePropertyAll(50),
                            // shadowColor: MaterialStatePropertyAll(Colors.white),

                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          child: Image(
                              image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/n'
                                  'etflix-5002f.appspot.com/o/majnu.jpg?alt=media&token=270bcb6d-2822-4658-805c-f14bf7fcb01b'))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netf'
                              'lix-5002f.appspot.com/o/raw.webp?alt=media&token=901d60e9-b931-42ec-afc2-861bfbd991c8'),
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b'
                              '/netflix-5002f.appspot.com/o/uncharted.webp?alt=media&token=31da13f7-9edc-48d6-a050-3fdae6d9c676'),
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image:NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/rrr.webp?alt=media&token=d73c3e31-a888-4d71-8f36-d9e00055a968'),
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/twoandahald.webp?alt=media&token=92c0eea0-9e6a-4a3d-84af-67b52595ac0a'),
                          fit: BoxFit.fitHeight,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'WorldWide Action Movies',
                    style: GoogleFonts.aboreto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
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
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.transparent]),
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            // elevation:MaterialStatePropertyAll(50),
                            // shadowColor: MaterialStatePropertyAll(Colors.white),

                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          child: Image(
                              image: NetworkImage('https://firebasestorage.googleapis.com/'
                                  'v0/b/netflix-5002f.appspot.com/o/raes.webp?alt=media&token=c6e8a0a2-3fca-46ce-b488-cdd3b604918d'))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image:  NetworkImage('https://firebasestorage.googleapis.com/v0/b/netf'
                              'lix-5002f.appspot.com/o/raw.webp?alt=media&token=901d60e9-b931-42ec-afc2-861bfbd991c8'),
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/uncharted.webp?alt=media&token=31da13f7-9edc-48d6-a050-3fdae6d9c676'),
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/murder.jpg?alt=media&token=a5da5408-5b80-4a68-b087-f4fb4cc70a6d'),
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/aka.jpg?alt=media&token=52c5e031-bdf3-4de5-8fef-ebaca2c175af'),
                          fit: BoxFit.fitHeight,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Award Winning Movies',
                    style: GoogleFonts.aboreto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
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
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.transparent]),
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            // elevation:MaterialStatePropertyAll(50),
                            // shadowColor: MaterialStatePropertyAll(Colors.white),

                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          child: Image(
                              image:
                                  NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/possessed.webp?alt=media&token=1709b6b9-316b-4e49-9d02-1402246fca07'))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/Queens.jpg?alt=media&token=474fdca8-6bdb-45ee-89b7-cfdcd7bb38ca'),
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/timetrap.webp?alt=media&token=09cb5568-5dab-4d9d-847e-3b8db5f09ae2'),
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/murder.jpg?alt=media&token=a5da5408-5b80-4a68-b087-f4fb4cc70a6d'),
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        child: Image(
                          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/aka.jpg?alt=media&token=52c5e031-bdf3-4de5-8fef-ebaca2c175af'),
                          fit: BoxFit.fitHeight,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              )
            ],
          )
        ],
      ),
    );
  }
}
