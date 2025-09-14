import 'package:flutter/material.dart';
import 'package:gsg_assignment6/routes.dart';
import 'package:gsg_assignment6/widgets/custom_text_field_widget.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isSignup = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Signup", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.network(
                  "https://www.shutterstock.com/image-vector/new-user-online-registration-sign-260nw-1982734163.jpg",
                  height: 200,
                ),
                CustomTextFieldWidget(
                  hint: "Name",
                  controller: nameController,
                  validate: (name) {
                    return name!.length >= 3 ? null : 'Enter Valid Name';
                  },
                ),
                CustomTextFieldWidget(
                  hint: "Email",
                  controller: emailController,
                  validate: (email) {
                    if (!email!.contains("@")) return 'Email must contain @';
                    if (!email.contains(".")) return 'Email must contain .';
                    return null;
                  },
                ),
                CustomTextFieldWidget(
                  hint: "Password",
                  isPassword: true,
                  controller: passwordController,
                  validate: (password) {
                    if (password!.length >= 8) return null;
                    return 'Weak Password';
                  },
                ),
                CustomTextFieldWidget(
                  hint: "confirm password",
                  isPassword: true,
                  controller: confirmPasswordController,
                  validate: (confirmPassword) {
                    if (confirmPassword == passwordController.text &&
                        confirmPassword!.isNotEmpty) return null;
                    return "Password must match";
                  },
                ),
                CustomTextFieldWidget(
                  hint: "phone number",
                  isPassword: true,
                  controller: phoneController,
                  validate: (phone) {
                    if (phone!.startsWith("0")) return null;
                    return "Enter valid phone number";
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.login);
                  },
                  child: Text("Already have an account?"),
                ),
                ElevatedButton(
                  onPressed: () => _signup(context),
                  child: isSignup
                      ? SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ))
                      : Text("signup"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _signup(BuildContext context) async {
    setState(() {
      isSignup = true;
    });

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      isSignup = false;
    });

    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, Routes.home);
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
