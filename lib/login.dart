import 'package:flutter/material.dart';
import 'package:loginsignup/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(
                  top: 140,
                ),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Welcome Back !',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  margin: const EdgeInsets.only(top: 180),
                  height: 160,
                  // color: Colors.red,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            label: Text(
                              'username',
                              style: TextStyle(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.remove_red_eye),
                            label: Text(
                              'password',
                              style: TextStyle(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                    .copyWith(top: 15),
                width: double.infinity,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 5),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              // color: const Color.fromARGB(255, 4, 100, 178),
                              decoration: TextDecoration.underline),
                        )),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 5),
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              // color: const Color.fromARGB(255, 4, 100, 178),
                              decoration: TextDecoration.underline),
                        )),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
