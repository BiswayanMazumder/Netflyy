import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/Privacy%20Policy.dart';
import 'package:netflix/firstpage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetFly',
      home: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/images/Netflix-Symbol (1).png',
            width: 500,
            height: 500,
          ),
          backgroundColor: Colors.black,
          animationDuration: Duration(seconds: 2),
          splashTransition: SplashTransition.decoratedBoxTransition,
          centered: true,
          nextScreen: HomeScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'User Not Found') {
        print('User Not Founded');
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image:NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/giphy%20(3).gif?alt=media&token=d766326e-6402-4baf-b642-76f1ddcf4811'),
          fit: BoxFit.fitHeight,
          //colorFilter: ColorFilter.mode(Colors.b),
          filterQuality: FilterQuality.high,
          repeat: ImageRepeat.repeat,
        )),
        // decoration: BoxDecoration(
        //   image: DecorationImage(image: AssetImage('assets/images/spiderman.jpg'),fit: BoxFit.fitHeight),
        // ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(30)),
              Align(
                alignment: Alignment.topLeft,
                child: Image(
                  image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/Netflix-Symbol%20(1).png?alt=media&token=91d2fa09-78ee-48e7-868e-5470bedfad8f'),
                  height: 60,
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Padding(padding: EdgeInsets.all(10)),
              Align(
                  alignment: Alignment.topLeft,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                          'Unlimited\n movies, TV\n shows and\n more.',
                          textStyle: GoogleFonts.arizonia(
                              color: Colors.white,
                              fontSize: 80,
                              letterSpacing: 2,
                              wordSpacing: 2,
                              fontWeight: FontWeight.bold),
                          speed: Duration(milliseconds: 500),
                          textAlign: TextAlign.justify)
                    ],
                    totalRepeatCount: 2,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    isRepeatingAnimation: true,
                    stopPauseOnTap: true,
                  )),
              Padding(padding: EdgeInsets.all(20)),
              Center(
                child: Text(
                  'Enter Your Email',
                  style: GoogleFonts.arvo(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Container(
                decoration: BoxDecoration(
                    //border: Border.all(color: Colors.white),
                    color: Colors.grey.shade500,
                    // border: Border.all(
                    //   width: 15,
                    //  style: BorderStyle.solid,
                    // ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                    border: BorderDirectional(bottom: BorderSide.none)),
                child: TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      //border:OutlineInputBorder(),
                      filled: true,
                      hintText: 'Email ID',
                      hintStyle: GoogleFonts.azeretMono(
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Center(
                child: Text(
                  'Enter Your Password',
                  style: GoogleFonts.arvo(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Container(
                decoration: BoxDecoration(
                    //border: Border.all(color: Colors.white),
                    color: Colors.grey.shade500,
                    // border: Border.all(
                    //   width: 15,
                    //  style: BorderStyle.solid,
                    // ),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                    border: BorderDirectional(bottom: BorderSide.none)),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      //border:OutlineInputBorder(),
                      filled: true,
                      hintText: 'Password',
                      hintStyle: GoogleFonts.azeretMono(
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                  onPressed: () async {
                    User? user = await loginUsingEmailPassword(
                        email: email.text,
                        password: password.text,
                        context: context);
                    if (user != null) {
                      print('Success');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstPage()),
                      );
                      CoolAlert.show(
                          context: context,
                          type: CoolAlertType.success,
                          text: 'Welcome To NetFly',
                          titleTextStyle:
                              GoogleFonts.sahitya(fontWeight: FontWeight.w300),
                          textTextStyle: GoogleFonts.arizonia(
                              fontWeight: FontWeight.bold, fontSize: 40));
                    } else {
                      print('Wrong Username');
                      Text(
                        'Wrong Username Or Password',
                        style: GoogleFonts.arya(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.red),
                      );
                      CoolAlert.show(
                          context: context,
                          type: CoolAlertType.warning,
                          title: 'Sign-In Failed',
                          text: 'Wrong Username Or Password',
                          textTextStyle: GoogleFonts.abhayaLibre(
                              fontWeight: FontWeight.bold, fontSize: 40),
                          titleTextStyle: GoogleFonts.arizonia(
                              fontWeight: FontWeight.w400, fontSize: 40));
                    }
                    ;
                  },
                  style: ButtonStyle(
                    animationDuration: Duration(seconds: 3),

                    backgroundColor:
                        MaterialStatePropertyAll(Colors.red.shade900),
                  ),
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.arya(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 40,
              ),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Privacy()),
                );
              },
                  child:Text('Privacy Policy',style: GoogleFonts.arya(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:15
                  ),))

              // child: ElevatedButton(onPressed: (){
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const CallPage()),
              //
              //   );
              // },
              //     style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.white),
              //     ),
              //     child:Row(
              //       children: [
              //         Center(
              //           child: Text('    Continue Using Mobile',style: TextStyle(
              //               fontSize: 20,
              //               color: Colors.black,
              //               fontWeight: FontWeight.bold
              //           ),),
              //         ),
              //         Icon(Icons.phone_android,color: Colors.black,)
              //       ],
              //     )),
            ],
          ),
        ),
      ),
    );
  }
}
