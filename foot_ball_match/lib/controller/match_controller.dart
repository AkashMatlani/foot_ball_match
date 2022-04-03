import 'package:flutter/material.dart';
import 'package:foot_ball_match/api/api_constant.dart';
import 'package:foot_ball_match/api/api_service.dart';
import 'package:foot_ball_match/model/match_response.dart';

class MatchController with ChangeNotifier {
  MatchResponse? matchResponse;
  bool dataLoaded = true;

  MatchController() {
    apiCallMatch();
  }

  Future<void> apiCallMatch() async {
    //Api Call
    dynamic response = await ApiService().getApiCall(ApiConstant.matches);
    var responseJson = response.data as Map<String, dynamic>;
    matchResponse = MatchResponse.fromJson(responseJson);
    dataLoaded = false;
    notifyListeners();
  }
}
