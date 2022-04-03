import 'package:flutter/material.dart';
import 'package:foot_ball_match/controller/match_controller.dart';
import 'package:foot_ball_match/design/foot_ball_header.dart';
import 'package:foot_ball_match/design/match_tile.dart';
import 'package:foot_ball_match/design/ui_responsive_widget.dart';
import 'package:provider/provider.dart';

class FootBallApp extends StatefulWidget {
  const FootBallApp({Key? key}) : super(key: key);

  @override
  State<FootBallApp> createState() => _FootBallAppState();
}

class _FootBallAppState extends State<FootBallApp> {
  MatchController? matchController;
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    matchController = Provider.of<MatchController>(context);
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveWidget(
          desktopScreen: Scaffold(
              body: matchController!.dataLoaded
                  ? const Center(child: CircularProgressIndicator())
                  : Container(
                      height: _screenHeight,
                      width: _screenWidth,
                      margin: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Column(children: [
                        FootBallHeader(),
                        Expanded(
                            child: RefreshIndicator(
                                key: refreshKey,
                                onRefresh: matchController!.apiCallMatch,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemExtent: 110.0,
                                  itemCount: matchController!
                                      .matchResponse!.matches!.length,
                                  itemBuilder: (context, index) {
                                    return MatchTile(matchController!
                                        .matchResponse!.matches![index]);
                                  },
                                )))
                      ])))),
    );
  }
}
