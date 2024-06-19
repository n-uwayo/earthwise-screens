import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChallengeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipOval(
              child: Image.network(
                'https://s3-alpha-sig.figma.com/img/278e/a5b3/0c6e41d72a229dc53bab8b7ea95ab849?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=f5nLJT5jKFPSE54ODAXKB68n~~bYtpdKzwRC4IG1RYEnPjm8UeT5D~x6TJJusnMlFayWtDMmKro1LE9GUf7BEuFaf0H8oxjVyJcAlr8qogpekpnp7ek-BZY5tloE53Wuu8ZCX5IM0MY2Ca-GgBc5BtUYsN6uGXPe0aKvu9lxU20U-ygXl-fOOrfnl1Ga8s0ttful~9Sh09zGB5TWCctiUC~AARMw2J7KPbF1eTNXyPaJkK5wmstcN-3P~UtGljJOV9udt6Ast9dl4BKKKD~F6DVIi7U~ZsWqmBe7OED5ZNmIMmhKfC0fs7AwSum5Rib-VnJZj0TT~cMAqQB2O-94yQ__',
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Text('Challenge Details'),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          width: 350, // Reduced width
          height: 750, // Increased height
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add, color: Colors.white),
                  label: Text('Add challenge'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                ),
                
                SizedBox(height: 10),
                Text(
                        'Reduce food waste',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/5f75/0b79/de310b80aa1c5dd6502eb8b4dcf69188?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=B7yx3zbMKH~uwddYOLtxIwdEwsGJQcTd7jxgIgJmSEKF9gAF5oeQEFADJhYDkY4IZPafJ70DR2SM0vOXU4a~~RFlW44GpQQOA3L9FM0G1dP8GHtpMpH87p949GCj1E2yR4NwhndB8DZsISBPKyZQKQWeVvY5hzaRDAjzTyngN0cUh3P5bVY6aiLkuixw5aFJPnhLC5Nk3tV9i4tSR8qLoWHO5RM0c7PP~tKvLZiIyMWmcLIL9qJp3bwAnGhoL30p~uNuLMh70aB~R3YuChVXZgrlqIsuRF0wQeidCNlhni~vhW5Ai6VQ~~3MDPTP-KghhmiB13fdX29qrFxynBztVg__', // Replace with actual URL
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/ed6a/93ed/4a0b4bd2889479d65964a8d52b6d703e?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qIbNq7SlKnBkBJ~H1DJw9ogPQzZ0IXCSeYjL5KFIufR-urTu0qw6eUfZLV-Tvj14dpy3C2ET-gp58a5bjx2WHaFOShm4QyCdLMn1J2PdkCbU9on1WeqLUb11-HA0S12g~8eONU8cIig3ridINg10hAFlZ62nQB~8-1pIO7ETjn~01e7lB~TVRShIrvCQh-2LFbYtc-FNpQEuZ7duAahXHBbgZQw3BYXY0Rreki54W1pQsC5uJbrL79aPBv~1hpyPLfaCHUNgR6bmHMcPBDZf~oNTMpBUifwQ9HKVMYxTiUIQEYuUjsPMH3crqLOuRhERcMGVglHXkstZiQL0s3f2Zg__', // Replace with actual URL
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Description',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'The "reduce food waste" challenge encourages Earthwise users to cut down on the amount of food they waste in their households. The goal is to reduce by 50% over the next four weeks. Join the challenge and start making a difference in your home today!',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Rules',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1. Track your waste\n2. Meal planning\n3. Proper storage\n4. Use-it-up approach\n5. Progress sharing',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Additional information',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Email us: ',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: 'challenge@earthwise.com',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Join'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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

void main() => runApp(MaterialApp(
  home: ChallengeScreen(),
));
