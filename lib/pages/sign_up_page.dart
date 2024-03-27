import 'package:flutter/material.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/widgets/custom_button.dart';
import 'package:food_delivery/widgets/custom_textfield.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isPass = true;

  void onTap() {
    setState(() {
      isPass = !isPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // L O G O
              Icon(
                Icons.lock_open_outlined,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
        
              const SizedBox(
                height: 30,
              ),
              // S L O G A N
              Text(
                "Create a new account",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              //Username Field
              CustomTextfield(
                controller: usernameController,
                hintText: "Username",
                icon: Icons.person,
              ),
        
              const SizedBox(
                height: 20,
              ),
              //email field
              CustomTextfield(
                controller: emailController,
                hintText: "Email",
                icon: Icons.email_outlined,
              ),
        
              const SizedBox(
                height: 20,
              ),
              //password field
              CustomTextfield(
                controller: passwordController,
                hintText: "Password",
                isPass: isPass,
                icon: isPass
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                onTap: () {
                  onTap();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              //sign in button
              CustomButton(
                buttonName: "Sign Up",
                onTap: () {},
              ),
        
              const SizedBox(
                height: 30,
              ),
              //sign up button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Registered?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        // Navigator.of(context).pushReplacement(
                        //     MaterialPageRoute(builder: (context) => LoginPage()));
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                      },
                      child: Text(
                        "Sign In!",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
