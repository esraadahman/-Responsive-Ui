import 'package:flutter/material.dart';
import 'package:responsive_ui/Core/UiComponent/infoWidget.dart';
import 'package:responsive_ui/Core/enums/deviceType.dart';

class Profilescren extends StatelessWidget {
  const Profilescren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: Infowidget(builder: (context, deviceInfo) {
        if (deviceInfo.deviceType == MyDeviceType.mobile) {
          return Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://tse2.mm.bing.net/th/id/OIP.-F6zn4qSeYmjFS9URAlYbQHaHZ?cb=12&rs=1&pid=ImgDetMain&o=7&rm=3'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Name :  John Doe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  "Email : esraadahman@gmail.com",
                  style: TextStyle(
                      fontSize: deviceInfo.localWidth / 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        } else if (deviceInfo.deviceType == MyDeviceType.tablet) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://tse2.mm.bing.net/th/id/OIP.-F6zn4qSeYmjFS9URAlYbQHaHZ?cb=12&rs=1&pid=ImgDetMain&o=7&rm=3'),
              ),
              const SizedBox(width: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Name :  John Doe',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Email : esraadahman@gmail.com",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://tse2.mm.bing.net/th/id/OIP.-F6zn4qSeYmjFS9URAlYbQHaHZ?cb=12&rs=1&pid=ImgDetMain&o=7&rm=3'),
              ),
              const SizedBox(width: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Name :  John Doe',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Email : esraadahman@gmail.com",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          );
        }
      }),
    );
  }
}
