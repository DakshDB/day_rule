import 'package:day_rule/widgets/button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  fontWeight: FontWeight.w100,
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                            text: 'Just for Kids',
                            onPressed: () {},
                            icon: Icons.amp_stories_outlined,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          ButtonWidget(
                            onPressed: () {},
                            icon: Icons.play_arrow_outlined,
                            width: 50,
                            height: 50,

                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          ButtonWidget(
                            onPressed: () {},
                            icon:
                              Icons.brush_outlined,
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          ButtonWidget(
                            onPressed: () {},
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
