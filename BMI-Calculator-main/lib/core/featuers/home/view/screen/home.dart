import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/action_button.dart';
import 'home2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            children: [
               CustomAppBar(),
              const SizedBox(height: 50),
              const Text(
                "Please choose your gender",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = "Male";
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                        color: selectedGender == "Male" ? const Color(0xFF519234) : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    elevation: 3,
                    margin: const EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: selectedGender == "Male"
                            ? Colors.green.shade100
                            : const Color(0xFFF0F8EC),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 32,
                              color: Color(0xFF519234),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Image.asset(
                            "assets/images/img.png",
                            width: 130,
                            height: 140,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = "Female";
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                        color: selectedGender == "Female" ? const Color(0xFFCE922A) : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    elevation: 3,
                    margin: const EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: selectedGender == "Female"
                            ? Colors.orange.shade100
                            : const Color(0xFFFBF6EE),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 32,
                              color: Color(0xFFCE922A),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Image.asset(
                            "assets/images/img_1.png",
                            width: 130,
                            height: 140,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              ActionButton(
                text: "Continue",
                onPressed: () {
                  if (selectedGender.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please select your gender first."),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home2(gender: selectedGender),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}