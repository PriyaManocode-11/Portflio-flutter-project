import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:portflio_app/utilis/util.dart';
import 'package:portflio_app/widgets/contact_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final HobbiesList = [
    {
      'title': 'Learning Flutter',
      'subtitle': 'Going Good',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKmzVZDmeqU7qKHaesjOJjptSo4IU0lyr0GSurl9eeu6CkkXiKVHN9WBAVNavEvAOULAE&usqp=CAU'
    },
    {
      'title': 'Skipping',
      'subtitle': 'Strength Muscle',
      'image':
          'https://imgix.lifehacker.com.au/content/uploads/sites/4/2020/09/07/Skipping.jpg?ar=16%3A9&auto=format&fit=crop&q=65&w=1280'
    },
    {
      'title': 'Listening To Songs',
      'subtitle': 'Relaxation',
      'image': 'https://picsum.photos/200/300'
    },
    {
      'title': 'Watching Tv',
      'subtitle': 'Entertainment',
      'image':
          'https://www.lg.com/in/images/tvs/md07538730/75QNED95VPA-D-01.jpg'
    },
    {
      'title': 'cooking',
      'subtitle': 'Tasty Food',
      'image':
          'https://www.eatright.org/-/media/eatrightimages/food/planningandprep/cookingtipsandtrends/culinary-lingo-688005624.jpg'
    },
    {
      'title': 'Singing',
      'subtitle': 'Good Voice',
      'image':
          'https://cdn.schoolofrock.com/img/news-article-hero-750w/how-to-warm-up-your-singing-voice-1559238633.jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                      opacity: 0.4,
                      child: Image.asset('assets/images/mypic.jpg')),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(
                          'I \'m  Priya. \n I \'m a Fresher and, \n a Beginner in Developing',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w700,
                            color: Colors.blueGrey,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 95, vertical: 50),
                            child: ContactButton(
                              buttonText: 'Mail Me',
                              icon: Icon(Icons.mail),
                              onPressed: () {
                                launchMailto();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 110),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'My Hobbies',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                  ),
                ),
              ),
              Expanded(
                child: Scrollbar(
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  interactive: true,
                  child: ListView.builder(
                    itemCount: HobbiesList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Card(
                              elevation: 3,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.laptop),
                                    title: Text(HobbiesList[index]['title']),
                                    subtitle:
                                        Text(HobbiesList[index]['subtitle']),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.network(
                                        HobbiesList[index]['image']),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 40,
          width: 100,
        ),
      ],
    );
  }

// ...somewhere in your Flutter app...

}
