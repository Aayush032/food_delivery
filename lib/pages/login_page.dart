import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/pages/sign_up_page.dart';
import 'package:food_delivery/widgets/custom_button.dart';
import 'package:food_delivery/widgets/custom_messenger.dart';
import 'package:food_delivery/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isPass = true;

  void onTap() {
    setState(() {
      isPass = !isPass;
    });
  }

  void onLogin(){
    FocusScope.of(context).unfocus();
    if(emailController.text == "admin" && passwordController.text == "pass"){
      showSnackbar("success", context);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomePage()));
    }
    else{
      showSnackbar("Invalid Username/Password", context);
    }
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
                "Delivering Deliciousness, Right to Your Door!",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
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
                buttonName: "Sign In",
                onTap: () {
                  onLogin();
                },
              ),
        
              const SizedBox(
                height: 30,
              ),
              //sign up button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUpPage()));
                      },
                      child: Text(
                        "Register Now!",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                            ),
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
