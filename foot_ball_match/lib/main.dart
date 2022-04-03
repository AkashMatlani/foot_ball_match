import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foot_ball_match/controller/match_controller.dart';
import 'package:foot_ball_match/design/football.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => MatchController())],
    child: MyApp(),
  ));

}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FootBallApp(),
    );
  }
}
