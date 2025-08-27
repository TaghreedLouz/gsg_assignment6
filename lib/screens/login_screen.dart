import 'package:flutter/material.dart';
import 'package:gsg_assignment6/routes.dart';
import 'package:gsg_assignment6/widgets/custom_text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Login", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
        child: Center(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.network(
                      "https://www.shutterstock.com/image-vector/computer-account-login-password-form-600nw-2316101921.jpg",
                      height: 300,
                      width: 400,
                    ),
                    CustomTextFieldWidget(
                      controller: emailController,
                      hint: "Email",
                      validate: (email) {
                        if (email!.contains("@") && email.contains(".")) {
                          return null;
                        }
                        return "Enter valid email";
                      },
                    ),
                    CustomTextFieldWidget(
                      controller: passwordController,
                      hint: "Password",
                      isPassword: true,
                      validate: (password) {
                        if (password!.length >= 8) return null;
                        return "Weak password";
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, Routes.signup);
                      },
                      child: Text("Didnt have an account?"),
                    ),
                    ElevatedButton(
                      onPressed: () => _login(context),
                      child: Text("Login"),
                    ),
                  ],
                ))),
      ),
    );
  }

  _login(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(
        context,
        Routes.main,
        arguments: emailController.text,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter valid credentials"),
          duration: Duration(milliseconds: 500),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
