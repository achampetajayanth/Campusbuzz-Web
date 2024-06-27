import 'package:flutter/material.dart';
// Import OverviewPage or the correct file path
import 'package:flutter_web/Signup.dart';
import 'package:flutter_web/constants/pages/overview/overview.dart';

class LoginPg extends StatelessWidget {
  LoginPg({Key? key}) : super(key: key);

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
              color: Colors.redAccent,
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
                height: 50,
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 920),
                    Container(
                      height: 120,
                      width: 320,
                      child: Image(
                        image: AssetImage("assets/logo.jpeg"),
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
              const SizedBox(
                height: 210,
              ),
              Container(
                child: const Row(
                  children: [
                    SizedBox(
                      width: 910,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 28.0,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "to host your event",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.only(
              left: 850,
              top: 255,
              right: 50,
            ),
            child: Container(
              width: screenWidth * 2 / 5 - 50,
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: const Icon(Icons.person, color: Colors.black),
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
              left: 850,
              top: 320,
              right: 50,
            ),
            child: Container(
              width: screenWidth * 2 / 5 - 50,
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email Address",
                  prefixIcon: const Icon(Icons.mail, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Color.fromRGBO(
                    200,
                    200,
                    200,
                    1,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 850,
              top: 385,
              right: 50,
            ),
            child: Container(
              width: screenWidth * 2 / 5 - 50,
              child: TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  prefixIcon: const Icon(Icons.phone, color: Colors.black),
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
              left: 850,
              top: 450,
              right: 50,
            ),
            child: Container(
              width: screenWidth * 2 / 5 - 50,
              child: TextFormField(
                controller: collegeController,
                decoration: InputDecoration(
                  labelText: "College Name",
                  prefixIcon: const Icon(Icons.school, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 850, top: 510, right: 50),
            child: Container(
              height: 45.0,
              width: screenWidth * 2 / 5 - 50,
              child: ElevatedButton(
                onPressed: () {
                  if (nameController.text.isNotEmpty &&
                      emailController.text.isNotEmpty &&
                      phoneController.text.isNotEmpty &&
                      collegeController.text.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OverviewPage()),
                    );
                  }
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
          Column(
            children: [
              SizedBox(
                height: 560.0,
              ),
              Row(
                children: [
                  SizedBox(width: 910),
                  Text(
                    "Already have an account",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    width: 20,
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
                        fontSize: 24.0,
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
