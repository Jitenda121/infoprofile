import 'package:flutter/material.dart';

class CardTablet extends StatefulWidget {
  const CardTablet({super.key});

  @override
  State<CardTablet> createState() => _CardTabletState();
}

class _CardTabletState extends State<CardTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: responsiveCardtab(context),
    );
  }
}

responsiveCardtab(context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 10,
    shadowColor: Colors.black,
    child: Container(
      //height: MediaQuery.of(context).size.height * 5,
      width: MediaQuery.of(context).size.width * 0.7,
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
            Wrap(
              children: [
                Text(
                  "Enter Username/email and password to login or social media account to login into the application.",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 25,
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
              height: 16,
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
              height: 20,
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
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 200,
              ),
            ),
            Image.asset("or.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "otp.png",
                  width: 200,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "google.png",
                  width: 200,
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}