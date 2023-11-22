import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/component/app_images.dart';

class CardWeb extends StatefulWidget {
  const CardWeb({super.key});

  @override
  State<CardWeb> createState() => _CardWebState();
}

class _CardWebState extends State<CardWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: responsiveCard1(),
    );
  }
}

responsiveCard1() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 10,
    shadowColor: Colors.black,
    child: Container(
      height: 550,
      //height: MediaQuery.of(context).size.height * 5,
      width: 420,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Row(
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Enter Username/email and password to login or\n social media account to login into the application.",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            TextFormField(
              decoration: InputDecoration(
                focusColor: const Color.fromARGB(255, 174, 204, 228),
                hoverColor: Colors.black,
                hintText: "Email or phone number",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            TextFormField(
              decoration: InputDecoration(
                //prefix: Icon(Icons.lock),
                focusColor: const Color.fromARGB(255, 174, 204, 228),
                hoverColor: Colors.black,
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget Password?",
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 1, 115, 207),
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
              onPressed: () {},
              child: const Text(
                "Log In",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 195,
              ),
            ),
            Image.asset("or.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("otp.png")],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Image.asset(AppImage.googleimages)],
            ),
          ],
        ),
      ),
    ),
  );
}
