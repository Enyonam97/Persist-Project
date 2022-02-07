import 'package:flutter/material.dart';
import 'package:plant/form_field.dart';
import 'package:plant/main.dart';
import 'package:plant/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/plant.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyApp(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.42),
                  child: Image.asset(
                    'images/vase.png',
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            MediaQuery.of(context).size.width * 0.1),
                      ),
                      color: const Color(0xff2EB886).withOpacity(0.5),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        const Text(
                          'Welcome back',
                          style: TextStyle(
                              fontSize: 42,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Login to my account',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff2EB886),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        formField(context, 'Email/Username'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 16.0),
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.3)),
                                  borderRadius: BorderRadius.circular(30.0),
                                  color:
                                      Colors.greenAccent[100]?.withOpacity(0.7),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: const UnderlineInputBorder(
                                                borderSide: BorderSide.none),
                                            labelText: 'Password',
                                            labelStyle: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Expanded(
                                        flex: 1,
                                        child: Opacity(
                                            opacity: 0.3,
                                            child: Icon(Icons.remove_red_eye)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.width * 0.02,
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.panorama_fish_eye,
                                      color: Colors.greenAccent[100],
                                    ),
                                  ),
                                  Text(
                                    'Remember Me',
                                    style: TextStyle(
                                        color: Colors.greenAccent[100],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Text('Forgot Password?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                margin: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height *
                                        0.02),
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.white, width: 3),
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: const Color(0xff2EB886)),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text('Login',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.transparent),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don't have an account?",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.7)),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterPage(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "Sign up",
                                        style:
                                            TextStyle(color: Color(0xff2EB886)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
