import 'package:flutter/material.dart';

import 'package:flutter_web/loginpg/loginpg.dart';

// ignore: must_be_immutable
class signup extends StatelessWidget {
  signup({Key? key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController collegeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth * 3 / 5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/dj.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 3 / 5,
            child: Container(
              width: screenWidth * 2 / 5,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Container(
                child: const Row(
                  children: [
                    SizedBox(
                      width: 910,
                    ),
                    Text(
                      "You've Been Missed !",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 160,
              ),
              Container(
                child: const Row(
                  children: [
                    SizedBox(
                      width: 950,
                    ),
                    Text(
                      "Welcome back",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 240,
              ),
              Container(
                child: const Row(
                  children: [
                    SizedBox(
                      width: 900,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "to host your event right now",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
                left: 850, top: 285, right: 90), // Adjusted right padding
            child: Container(
              width: screenWidth * 2 / 5 - 50, // Adjusted width
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.mail, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 850, top: 350, right: 90), // Adjusted right padding
            child: Container(
              width: screenWidth * 2 / 5 - 50, // Adjusted width
              child: TextFormField(
                controller: collegeController,
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  prefixIcon: const Icon(Icons.lock, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 850, top: 420, right: 90),
            child: Container(
              height: 45.0, // Adjusted height
              width: screenWidth * 2 / 5 - 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle the button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 850, top: 510),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10.0), color: Colors.red),
          //     width: 445.0,
          //     height: 45.0,
          //   ),
          // ),
          Column(
            children: [
              SizedBox(
                height: 485.0,
              ),
              Row(
                children: [
                  SizedBox(width: 910),
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPg()),
                      );
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
