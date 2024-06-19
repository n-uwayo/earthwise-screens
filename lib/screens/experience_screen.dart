import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperienceScreen extends StatelessWidget {
  final List<Map<String, String>> experiences = [
    {
      'image': 'https://s3-alpha-sig.figma.com/img/6bab/b1e4/cbd856380b59798ac0e11e9a3725e477?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=oLH~YxiOlUSxCxO1OSAxHnveY5ij4Qru62awoHgTEq3P-xhL5W~G01m1EAsqHBQQ5gAM-69IvxFFivwdp~OHVqJcZp~7boSMFJNxYkW9xLUCtKz8ORrvLchJmbS5trXObviCgcAglPZuK9Buda44Etu5tJBpXzHLOSF3gl0Davs6faTd77lpoZoFwpCzUtzYB0L10HIj61wbAHnR~uONlOy8ZWZKB9-EptxtMvjFFxiAm43thpECvT3xQxz2A7ElhvgbY4GCTUuK0AbLwYZqqwRksMcZ1N~72NvwhW8gxIXpjF2Bgg0b6ODQkU~jw2YswG83okHjteFW8FHR9XUMtA__',
      'title': 'Deforestation',
      'description': 'It is the permanent destruction of forests for other uses. This process involves the clearing, cutting, and removal of trees.',
      'date': '',
    },
    {
      'image': 'https://s3-alpha-sig.figma.com/img/153a/a87c/3e7c12868807375c3bc5cf096099529a?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AbSs7~AQuq5NShf59c9cv3vVqDvlN812t2v2fdoZYUMvk9JepaIjhE~YIwxE59YmwXmgAqliuQCmTQTTLtteGG0twQYPwBo-CnbSXz-Z3fARDQTRDTJ3MdFFIzqyvHRLBBNoHfkjuZ6jW~VwDsAIYKs9M-vlj5nm06ix-AZz9U8FIKg8mnOcatZVEqCgT-FrK~EYAd4jQuP3t-rs30VSFiL9RECTcx~jOZyLjXJRIw00o3y2aSOPSYWzhvdp9kNncoeRxo4jBMzjrLh5tQuCdE7pkbH-82Z3bK9aqX6aBsASBghjQ0UhRda8GjkYeN5J-ALHYkUwJUGNQ9vDamTBhg__',
      'title': 'Wildlife populations',
      'description': 'Mammals, birds, amphibians, reptiles, and fish have seen a devastating 69% drop on average since 1970, according to WWF\'s Living Planet Report (LPR) 2022.',
      'date': '',
    },
    {
      'image': 'https://s3-alpha-sig.figma.com/img/eb2f/d9fb/a64c84b2e52758e51a76e5ecfc7b9af4?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mi16onFpFBxU2kQpYK8wYoZEBkkApkGz~svnp9x4pybh3StOnW6ngRVtvuc2PKxC~7X~Nwuy1IkfFSn2IkuSPo4kcGtAL6inxezY3-SvZoh14GFIDC5PN2spxnWGXag70g906or1pyRVm4rw2BV9pYuxQzmDkSQgjs0tR6Kv3pc2wnaF1gIzUf7AELgEEblwZx7Ilka3xAFWVOlkjCYDEvw7YfCPpzic44zAHUiPaQchTkxVlqJoRtK3DghEGSHmtpReRncR6bluZs0hOqD6VFkDGVz3WWNMVTjizuVA1CRRZGn3hEJNg3gdd6nPP8jXdiF2C~WKqSy-MQFSFSWxYg__',
      'title': 'Sea level rise',
      'description': 'Burning fossil fuels is one of the causes of global warming, which causes the increase of the level of the world\'s oceans.',
      'date': '',
    },
    {
      'image': 'https://s3-alpha-sig.figma.com/img/acef/696e/9cca217d13ecc55819a8b85647d956ef?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lg4pUT1qA9w0ESrRTEWiJeZQ67YMbYUtwg~2pSj7cT1iHHMO3YMIk3LZbLvOyn9BYK1G9im1exkTySmOLC2LixZqZirSKba2~sEzDqId3wqhDyTXDREwteoQ-f11lwH6sCEvNjOlq94jUorqENkueluV9WNr0gGDC5lT4Aw9-4UaxdSD5c~1Um68~TgKwPPGS9prRZlPTDd5ZeOXRAVx7KUXSpDP4TTSU8-ofQ5H6JmIwVKTy7OkO4h1pJQjtVuCxIv~tKhoJOWxqrZZe0Jrmo76CT35qNWQ8jZlg2jxdB90lUiUg7kNG7hk7nrEOLi~LynnYywHBtBf8gse~w0coQ__',
      'title': 'Renewable Energy',
      'description': 'The energy derived from natural sources can reduce carbon emissions and air pollution from energy production. Enhance reliability, security, and resilience of the power grid.',
      'date': '',
    },
  ];
final List<Map<String, String>> impactImages = [
    {
      'image': 'https://s3-alpha-sig.figma.com/img/cb23/1456/b572fae22bdb9229f761fa071c6bcf08?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=M~uTziqfi6SWKUyFafHLDXemQNW8wD4Q5PCFAhEfrO33rduaRcrJY1L6K6AIqhJjV4YY6n4YtZjdmvhH2p0zN2bcLBPotgbhlyHYOo0sqfCrm1IHecHLPqeb9BvuIpS9wf3Cb-Ea3BkCjwgOHCD5R3dDg-RNDS-MnqgypMGTGl0Iv3PF8oVpt~Q0e-QuvEOmB2y8vKrGSgsEXUDZun-JKf3qNJjj6~xr2TqXyEb9rO6KE33Fb30ubk8vyk0P7YtFXv3uCoUG0oCE5IUGd1A7-dNiUXe6BUIZf~Xv2tHfZAHd6bgDk-1Ti0MU~tfuEn09h3OrCro9nr4CfFj9hQE42Q__', // Replace with actual image URL
      'title': 'Loss of \n habitat and \n biodiversity',
    },
    {
      'image': 'https://s3-alpha-sig.figma.com/img/5226/1b17/c5de68ef6cf8bfecd3c3867afe7916cf?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jDzT~4I9hwSl80mkyKBm9sRwAPAVr6MSRUt3tcteva7DZ231ry~Q9~ucbnkcbhTcsqvglV0uWQTiVaKUwxlwZeJ5Wir9RtDNGnbaSwRO0hNimzJAMxbY6Qet7bEIlIlw7WT4UsJ85kHGjx1p~SwDZ-Xyxu5F3ol1~C0hf2X3ZL53JdD~EOZNZ4vI2W1qSygmJbVY1HJDDYfoVIRap0QOR2buIrAW0OfG8cJi41RXfI246xGsSPP9dr8WpTUAIKSD~7p1O6A9f3AHKdql53HFGrkkgehUHTgR5p7h~8KKtb~JSXcYRonipBx5SE9yun0WMlD9kxFEv6dVi9kuQ82QYQ__', // Replace with actual image URL
      'title': 'Disruption of \n global climate \n patterns',
    },
    {
      'title': 'Soil erosion, \ndegradation, and \n desertification', // Replace with actual image URL
      'image': 'https://s3-alpha-sig.figma.com/img/9be5/1da8/39f051833b0f8891b8889a5e6efaa6db?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XSj7wKWZr0G3VttrkWuUNqxuGi9TyYRCWYFlNaQtuxavkz7z4skntjrf-QcYCeaeLk9vZ1tCvYPQyrGmo0-vJ7ausHy5P3dFSdoQ3f-ZpJmle8UYl6haPWrA-A3hmavWHC5On5IuLqKEP3xXPCzTcWJGRHXQvmT8Agha6g6rgdQdFR7MF1pdZoeb~JHXbQXSV2jmUb73Yk1gTQjNr7OCYHe76yj9~XZBGB1gIefJkKi7BjZAHHzGUDCFScTHIB~TTI~ISNtH9T9lOejIR2FGXAYda9csb7~A0ssIaMERmr7aUUca2DCLVBQC7zvqKV-fezOoEKJC6fgL9hZuhvkTHQ__',
    },
    {
      'image': 'https://s3-alpha-sig.figma.com/img/1f84/5adb/290bca1047af1633b65fc07c43fa828f?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JKhxyqYk4J8PUHFKa9YUgcODVVgosinVZCIbAzkAmA-7x5AxuZZR~1OUUTVy8LZWmFUvap0LKX7oSqWIOZKfXKPCsj2PwHtuXveME0SuiF0Pd~UmBlmO7CQNMIbztm7kbIAGoUcpn1TQx4gbVOiXXf71kAlnCV~kH82MabGKHIpIZvLz-NkWECVmnivQggNsBtaYTijmLp44facKTjve~nuT18vgGurj-BaBFZvLYe8ixtfgR2CH3KuEQ71awN4yjp6IuGyf4aqWMcLO67ydL9IHVUOkeZmCEO-LOXcD2ZztpvnozTK7XzAHwQp~AzAw3q5ApYLimY995NAxoLkNtw__', // Replace with actual image URL
      'title': 'Contribution to \n greenhouse gas \nemissions',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AR Experience'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AR Experience Launch',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ...experiences.map((experience) => Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.network(
                                      experience['image']!,
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      experience['title']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                experience['description']!,
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 5),
                              if (experience['date'] != null &&
                                  experience['date']!.isNotEmpty)
                                Text(
                                  experience['date']!,
                                  style: TextStyle(color: Colors.white70),
                                ),
                            ],
                          ),
                        ),
                      )),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Impacts of deforestation',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: impactImages.map((impact) {
                            return Column(
                              children: [
                              
                                SizedBox(height: 5),
                                Text(
                                  impact['title']!,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(80.0),
                                  child: Image.network(
                                    impact['image']!,
                                    width: 60,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.shareAlt),
                    onPressed: () {},
                    color: Colors.black,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebook),
                    onPressed: () {},
                    color: Colors.black,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {},
                    color: Colors.black,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () {},
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ExperienceScreen()));
}
