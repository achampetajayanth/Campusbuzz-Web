import 'package:flutter/material.dart';
import 'package:flutter_web/Signup.dart';
import 'package:flutter_web/landingpage/landingpage.dart';

// ignore: must_be_immutable
class Passwd extends StatelessWidget {
  Passwd({Key? key});

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
                height: 150,
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 320),
                    Container(
                      height: 120,
                      width: 320,
                      child: Image(
                        image: AssetImage("assets/bw.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                child: const Row(
                  children: [
                    SizedBox(
                      width: 930,
                    ),
                    Text(
                      "Create a password",
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

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
                left: 850, top: 255, right: 90), // Adjusted right padding
            child: Container(
              width: screenWidth * 2 / 5 - 50, // Adjusted width
              child: TextFormField(
                controller: nameController,
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
            padding: const EdgeInsets.only(
                left: 850, top: 325, right: 90), // Adjusted right padding
            child: Container(
              width: screenWidth * 2 / 5 - 50, // Adjusted width
              child: TextFormField(
                controller: collegeController,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
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
            padding: const EdgeInsets.only(left: 850, top: 395, right: 90),
            child: Container(
              height: 45.0, // Adjusted height
              width: screenWidth * 2 / 5 - 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => lpage()),
                  ); // Handle the button press
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
                height: 450.0,
              ),
              Row(
                children: [
                  SizedBox(width: 910),
                  Text(
                    "Already have an account ?",
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
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                    },
                    child: Text(
                      'Login',
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
