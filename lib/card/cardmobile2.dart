import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/component/app_images.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveCard(),
    );
  }
}

class ResponsiveCard extends StatefulWidget {
  @override
  _ResponsiveCardState createState() => _ResponsiveCardState();
}

class _ResponsiveCardState extends State<ResponsiveCard> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      shadowColor: Colors.black,
      child: Container(
        height: 680,
        width: 420,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Log In",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Enter Username/email and password to login or  \n social media account to login into the application.",
                      style: TextStyle(height: 1.5),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusColor: const Color.fromARGB(255, 174, 204, 228),
                    hoverColor: Colors.black,
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    hintText: "Username/Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username/email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 13,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusColor: const Color.fromARGB(255, 174, 204, 228),
                    hoverColor: Colors.black,
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.blue,
                    ),
                    hintText: "Password",
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                    // prefix: const Icon(
                    //   Icons.lock_open,
                    //   color: Colors.blue,
                    // ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 1, 115, 207),
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form validation succeeded, perform login
                    }
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Image.asset(AppImage.or),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(AppImage.logininwithopt)],
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(AppImage.googleimages),
                // Image.asset(AppImage.dont)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
