import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopabay/components/logo.dart';
import 'package:shopabay/utilities/constants.dart';
import 'package:shopabay/screens/registration_screen.dart';
import 'home_screen.dart';
import 'package:social_media_buttons/social_media_button.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: darkColor,
        child: CustomPaint(
          painter: CurvePainter(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Center(child: Logo(size: size.height * 0.05)),
              SizedBox(
                height: size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: pcolor),
                  decoration: kEmailInputDecoration,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: pcolor),
                  obscureText: true,
                  decoration: kPassInputDecoration,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 13,
                        color: pcolor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: size.width * 0.07,
                        backgroundColor: pcolor,
                        child: Icon(
                          Icons.arrow_forward,
                          color: darkColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RegistrationScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'New user? Register here!',
                    style: TextStyle(
                      fontSize: 15,
                      color: pcolor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'or',
                  style: TextStyle(
                    fontSize: 15,
                    color: pcolor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: pcolor,
                  child: ListTile(
                    leading: SocialMediaButton.google(
                      url: null,
                      color: darkColor,
                    ),
                    title: Text(
                      'Sign In with Google',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: lightColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = lightColor;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.2);
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
