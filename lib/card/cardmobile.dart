// import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class CardIos extends StatelessWidget {
//   const CardIos({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: responsiveCardios(context),
//     );
//   }
// }

// responsiveCardios(context) {
//   return Card(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//     elevation: 10,
//     shadowColor: Colors.black,
//     child: Container(
//       height: MediaQuery.of(context).size.height * 0.9,

//       //height: MediaQuery.of(context).size.height*0.5,
//       //height: MediaQuery.of(context).size.height * 5,
//       width: MediaQuery.of(context).size.width * 0.9,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(18),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Text(
//                   "Log In",
//                   style: TextStyle(
//                       fontSize: 30,
//                       color: Colors.blueAccent,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Wrap(
//               children: [
//                 Text(
//                   "Enter Username/email and password to login or social media account to login into the application.",
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 18,
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 focusColor: const Color.fromARGB(255, 174, 204, 228),
//                 hoverColor: Colors.black,
//                 hintText: "Email or phone number",
//                 prefixIcon: Icon(Icons.email),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 13,
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 //prefix: Icon(Icons.lock),
//                 focusColor: const Color.fromARGB(255, 174, 204, 228),
//                 hoverColor: Colors.black,
//                 hintText: "Password",
//                 prefixIcon: Icon(Icons.lock),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Text(
//                   "Forget Password?",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 17,
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor: const Color.fromARGB(255, 1, 115, 207),
//                   minimumSize: const Size(double.infinity, 60),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(7))),
//               onPressed: () {},
//               child: const Text(
//                 "Log In",
//                 style: TextStyle(fontSize: 22),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 190,
//               ),
//             ),
//             Image.asset("or.png"),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   "otp.png",
//                   //width: 70,
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Image.asset(
//                   "google.png",
//                   width: 100,
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey, // Form key for validation
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[900],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter username/email and password to login or use social media accounts to login into the application.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.mail,
                          color: Colors.blue,
                        ),
                        hintText: 'Email / Username',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email or username';
                        }
                        // You can add more validation logic if needed
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        hintText: 'Password',
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        // You can add more validation logic if needed
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, perform login or submit logic
                      // You can add your login logic here
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: Size(double.infinity, 60),
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OR",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Log In With OTP",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                //Center(child: Image.asset('images/f.png')),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        SizedBox(
                          child: Text(
                            "Dont Have a Acoount?  ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
