import 'package:flutter/material.dart';
import 'package:gooey_carousel/gooey_carrousel.dart';

class SecondScreen extends StatelessWidget {
  Widget liqidpage(String imgUrl, String description, Color color) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imgUrl),
            SizedBox(
              height: 40.0,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35.0,
                fontFamily: 'josefinsans',
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GooeyCarousel(
        children: [
          liqidpage("assets/img/sleep.png", "Priortize your SLEEP.",
              Colors.teal[100]),
          liqidpage("assets/img/workout.png",
              "Do the Daily Workout as per your ease.", Colors.cyan[200]),
          liqidpage("assets/img/chat.png",
              "Chat with your mates, families, loved ones.", Colors.white),
          liqidpage(
              "assets/img/meal.png", "Make Homemade meals.", Colors.blue[50]),
          liqidpage(
              "assets/img/break.png",
              "Don't see those things which you feel irritated.",
              Colors.deepPurple[50]),
          liqidpage("assets/img/music.png", "Make your own Music playlists.",
              Colors.amberAccent),
          liqidpage("assets/img/read.png", "Watch or Read something uplifting.",
              Colors.amber[900]),
          liqidpage("assets/img/learn.png", "Learn something new.",
              Colors.purple[200]),
        ],
      ),
    );
  }
}
