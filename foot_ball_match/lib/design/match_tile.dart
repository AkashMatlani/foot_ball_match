import 'package:flutter/material.dart';
import 'package:foot_ball_match/model/match_response.dart';
import 'package:foot_ball_match/utills/constant.dart';
import 'package:foot_ball_match/utills/conversion_util.dart';

class MatchTile extends StatelessWidget {
  Matches matches;

  MatchTile(this.matches, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return matchTile(matches, context);
  }

  Widget matchTile(Matches match, BuildContext context) {
    return Card(
      elevation: 5,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white)),
      shadowColor: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: match.homeTeam!.name != null
                    ? Text(
                        ConversionUtils.convertToDisplayDate(match.utcDate),
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      )
                    : Container(
                        height: 0,
                      ),
              ),
              Expanded(
                child: match.homeTeam!.name != null
                    ? Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          match.homeTeam!.name!,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                    : Container(
                        height: 0,
                      ),
              ),
              match.awayTeam!.name != null && match.homeTeam!.name != null
                  ?  Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: Text(Constant.vs))
                  : Container(
                      height: 0,
                    ),
              Expanded(
                child: match.awayTeam!.name != null
                    ? Text(
                        match.awayTeam!.name!,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      )
                    : Container(
                        height: 0,
                      ),
              ),
              Expanded(
                child: match.score!.fullTime!.homeTeam != null
                    ? Text(
                        "${match.score!.fullTime!.homeTeam!} : ${match.score!.fullTime!.awayTeam!}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      )
                    : Container(
                        height: 0,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
