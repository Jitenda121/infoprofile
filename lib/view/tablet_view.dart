import 'package:flutter/material.dart';
import 'package:flutter_application_1/card/cardtablet.dart';

class TabletBiew extends StatefulWidget {
  const TabletBiew({super.key});

  @override
  State<TabletBiew> createState() => _TabletBiewState();
}

class _TabletBiewState extends State<TabletBiew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset('left.png'),
              Positioned(right: 0, child: Image.asset('itachi.png')),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        child: Image.asset(
                          'logo33.png',
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Meet Your Best",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'Connections',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.lightBlue[900],
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Build fast, easy & lifelong professional connections.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  responsiveCardtab(context),

                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        SizedBox(
                            height: 40,
                            width: 170,
                            child: Image.asset("a.png")),
                        SizedBox(
                            height: 40, width: 170, child: Image.asset('g.png'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    'Infoprofile Is designed for everyone.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'What ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'InfoProfile provides',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' you',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  // const Madara(),
                  const MouseRegion(),
                  const SizedBox(
                    height: 70,
                  ),
                  //calling the site card which was made in the chrome sectioin
                  // SiteCard(),
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset("vector.png"),
                  const SizedBox(
                    height: 50,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'You can create\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Multiple profiles ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'for\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'your account',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "A domain that helps you\ndevelop your skills through\nbuilding multiple portals to\nsolve problems . All you need is\na laptop and an attitude\nto learn and progress. We\nprimarily deal with Web Dev,\nApp Dev and Blockchain\nelements.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 350,
                      height: 350,
                      child: Image.asset('imageeee.png')),
                  RichText(
                    text: const TextSpan(
                      text: 'Be ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Creative ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'in your\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'own way by joining\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'or building a \n',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'community',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Here we produce unusual ideas,\nreflecting the originality of the\nGitHub Community SRM. We\nbuild a transformative\nexperience for our members in\nthe creative field dealing with\nUI/UX, VFX/GFX, Content Writing\nand Photography elements.',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Stack(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 5, 106, 189),
                        height: 450,
                      ),
                      SizedBox(height: 150, child: Image.asset('stack1.png')),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                            height: 150, child: Image.asset('stack2.png')),
                      ),
                      Column(
                        children: [
                          Image.asset('transwer.png'),
                          const Text(
                            "Download our App from",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            child: Wrap(
                              direction: Axis.horizontal,
                              children: [
                                SizedBox(
                                    height: 40,
                                    width: 170,
                                    child: Image.asset('google1.png')),
                                SizedBox(
                                    height: 40,
                                    width: 170,
                                    child: Image.asset('a.png'))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      )
                    ],
                  ),
                  Image.asset("1234.png"),
                  const Text(
                    "Make friends by\nBuilding connections\nthat are relevant to\nyou.",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "The best domain for a real-time\nexperience of the corporate\nworld . Improving your\ncommunication and time\nmanagement skills is the main\nprospect. PR, Sponsorship,\nSocial media handling ,\nTreasury, and Marketing are\nelements of this\ndomain.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 1060,
                        color: Colors.white,
                      ),
                      Positioned(
                        top: 140,
                        child: Container(
                          height: 1060,
                          width: MediaQuery.of(context).size.width * 1,
                          color: const Color.fromRGBO(7, 99, 198, 1),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 140,
                                ),
                                SizedBox(
                                    width: 200,
                                    child: Image.asset(
                                      'info.png',
                                      fit: BoxFit.contain,
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Not a normal app, its unique!",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Services are provided everywhere.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset('face.png'),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset('linked.png'),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset('insta.png')
                                  ],
                                ),
                                //Image.asset("images/Frame 34933.png"),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Features",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "View Feeds",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Make Connections",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Creating Visiting Cards",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Create Different Profile Pages",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Links",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Terms & Connections",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Company",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "About Us",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Contact Us",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Help & Support",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Getting Started FAQ",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 1,
                                  width: 380,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Wrap(
                                  direction: Axis.horizontal,
                                  children: [
                                    Text(
                                      "© Copyright Infoprofile LTD.",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 95,
                                    ),
                                    Text(
                                      "All rights reserved.",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Center(
                      //     child: SizedBox(
                      //         height: 200,
                      //         width: 550,
                      //         child: const bottomtab1()))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
