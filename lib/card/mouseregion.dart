import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/component/app_color.dart';

class IosTablet extends StatefulWidget {
  const IosTablet({
    super.key,
  });

  @override
  State<IosTablet> createState() => _SiteCardState();
}

//definig variables for using them in changing the design
double upwardWeb = 0;
//var designWeb = Colors.white;
var designWeb = AppColor.myColor;
bool visitCardWeb = false;
bool shareMediaWeb = false;
bool groupWeb = false;

class _SiteCardState extends State<IosTablet> {
  //function for returning the card to display text
  Widget infoProfileCardWeb(IconData icon, String text, String text2,
      VoidCallback onTap, bool isSelected) {
    return SizedBox(
      width: 200,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: upwardWeb,
          color: isSelected ? AppColor.myColor1 : AppColor.myColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 10, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blueAccent,
                  child: Icon(
                    icon,
                    size: 40,
                    color: Colors.white,
                    
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  text2,
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //using of wrap to automatically get the size of the screen and adjust according to that
      children: [
        //calling the function to display the properties
        infoProfileCardWeb(Icons.badge, 'Visiting\nCard',
            'Share your visiting cards with the best connections all around the country.',
            () {
          //defining the set state to change properties when clicked
          setState(() {
            visitCardWeb = true;
            shareMediaWeb = false;
            groupWeb = false;
            
          });
        }, visitCardWeb),
        const SizedBox(
          width: 50,
        ),
        //calling the function to display the properties
        infoProfileCardWeb(Icons.share, 'Share\nMedia',
            'Share your favourite images,video or any link yo feel like sharing with your connections or community.',
            () {
          //defining the set state to change properties when clicked
          setState(() {
            visitCardWeb = false;
            shareMediaWeb = true;
            groupWeb = false;
          });
        }, shareMediaWeb),
        const SizedBox(
          width: 50,
        ),
        //calling the function to display the properties
        infoProfileCardWeb(Icons.group, 'Multiple\nProfile',
            'You can choose to make multiple profiles for your accounts.', () {
          setState(() {
            //defining the set state to change properties when clicked
            visitCardWeb = false;
            shareMediaWeb = false;
            groupWeb = true;
          });
        }, groupWeb),
      ],
    );
  }
}
