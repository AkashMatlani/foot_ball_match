
import 'package:flutter/material.dart';
import 'package:foot_ball_match/utills/constant.dart';

class FootBallHeader extends StatelessWidget {
  const FootBallHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
            left: 10, top: 10, right: 10),
        margin: const EdgeInsets.only(
            left: 10, top: 10, bottom: 5),
        child: Center(
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Text(Constant.dateStatus,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold))),
              Expanded(
                flex: 7,
                child: Text(
                  Constant.opponents,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(Constant.score,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ));
  }
}
