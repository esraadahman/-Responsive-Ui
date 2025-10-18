import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/Core/UiComponent/infoWidget.dart';
import 'package:responsive_ui/Core/enums/deviceType.dart';
import 'package:responsive_ui/Core/functions/getDeviceType.dart';
import 'package:responsive_ui/Core/size/sizeClass.dart';
import 'package:responsive_ui/task/profileScren.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: Profilescren()
        // CleanScaffold(),
        );
  }
}

class CleanScaffold extends StatelessWidget {
  const CleanScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Container(
          color: Colors.black,
          // take full screen width (whole device width)
          width: screenWidth(context) / 2,
          // take full screen height (whole device height)
          height: screenHight(context) / 2,
          child:
              // OldWidget(),
              Infowidget(builder: (context, deviceInfo) {
            // print all info on console  that in deviceInfo object
            print('Device Type is : ${deviceInfo.deviceType}');
            print(
                'Parent Width is : ${deviceInfo.localWidth} , Parent Height is : ${deviceInfo.localHeight}');
            print(
                'Screen Width is : ${deviceInfo.ScreenWidth} , Screen Height is : ${deviceInfo.ScreenHeight}');
            print('Orientation is : ${deviceInfo.orientation}');
            return Center(
              child: Container(
                color: Colors.amber,
                // take 50% of parent width
                width: deviceInfo.localWidth * 0.5,
                // take 30% of parent height
                height: deviceInfo.localHeight * 0.3,
              ),
            );
          }),
        ));
  }
}

class OldWidget extends StatelessWidget {
  const OldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        // layout builder provide us the constraints of parent widget
        // not the whole screen size
        child: LayoutBuilder(
      builder: (context, constraints) {
        // get devices type
        // can be like this =>  var deviceType = getDeviceType(MediaQuery.of(context));
        // or like this =>
        MyDeviceType deviceType = getDeviceType(MediaQuery.of(context));
        print('Device Type is : $deviceType');
        // get parent width and height from constraints object
        double parentWidth = constraints.maxWidth;
        double parentHeight = constraints.maxHeight;
        return Container(
          color: Colors.amber,
          // take 50% of parent width
          width: parentWidth * 0.5,
          // take 30% of parent height
          height: parentHeight * 0.3,
        );
      },
    ));
  }
}
