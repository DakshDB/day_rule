import 'package:enhanced_you/screens/journal/home.dart';
import 'package:enhanced_you/screens/profile/profile.dart';
import 'package:enhanced_you/services/notification_service.dart';
import 'package:enhanced_you/services/share_service.dart';
import 'package:enhanced_you/widgets/button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  NotificationService notificationService = NotificationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/10/18/21/22/beach-1751455_1280.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.darken),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                "I am comfortable communicating my feelings",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () async {

                        shareContent(
                          title: "Enhanced You",
                          content: "A new event has been created.",
                          url: "https://cdn.pixabay.com/photo/2016/10/18/21/22/beach-1751455_1280.jpg",
                        );

                        // // TODO: This is a test notification. Remove this.
                        // DateTime eventDate = DateTime.now().add(const Duration(seconds: 10));
                        // await notificationService.scheduleNotification(
                        //   1,
                        //   "Enhanced You",
                        //   "Reminder for your scheduled event at ${DateFormat("h:mm a").format(eventDate)}",
                        //   eventDate,
                        //   jsonEncode({
                        //     "title": "Enhanced You",
                        //     "eventDate": DateFormat("EEEE, d MMM y").format(eventDate),
                        //     "eventTime": DateFormat("h:mm a").format(eventDate),
                        //   }),
                        //     DateTimeComponents.time
                        // );
                      },
                      icon: const Icon(
                        Icons.ios_share_outlined,
                        color: Colors.grey,
                        size: 36,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () async {


                        // // TODO: This is a test notification. Remove this.
                        // await notificationService.showNotification(
                        //   0,
                        //   "Enhanced You",
                        //   "A new event has been created.",
                        //   jsonEncode({
                        //     "title": "Enhanced You",
                        //     "eventDate": DateFormat("EEEE, d MMM y").format(
                        //         DateTime.now().add(const Duration(days: 1))),
                        //     "eventTime": "10:00 AM",
                        //   }),
                        // );
                      },
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                        size: 36,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 18,
                          ),
                          ButtonWidget(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const JournalHome(),
                                ),
                              );
                            },
                            icon: Icons.menu_book_outlined,
                            height: 50,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ButtonWidget(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const Profile(),
                                ),
                              );
                            },
                            icon: Icons.person_outline,
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
