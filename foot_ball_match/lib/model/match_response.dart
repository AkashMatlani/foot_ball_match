class MatchResponse {
  int? count;
  Filters? filters;
  List<Matches>? matches;

  MatchResponse({this.count, this.filters, this.matches});

  MatchResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    filters =
        json['filters'] != null ? Filters.fromJson(json['filters']) : null;
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    if (filters != null) {
      data['filters'] = filters!.toJson();
    }
    if (matches != null) {
      data['matches'] = matches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Filters {
  String? dateFrom;
  String? dateTo;
  String? permission;

  Filters({this.dateFrom, this.dateTo, this.permission});

  Filters.fromJson(Map<String, dynamic> json) {
    dateFrom = json['dateFrom'];
    dateTo = json['dateTo'];
    permission = json['permission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dateFrom'] = dateFrom;
    data['dateTo'] = dateTo;
    data['permission'] = permission;
    return data;
  }
}

class Matches {
  int? id;
  Competition? competition;
  Season? season;
  String? utcDate;
  String? status;
  int? matchday;
  String? stage;
  String? lastUpdated;
  Odds? odds;
  Score? score;
  HomeTeam? homeTeam;
  HomeTeam? awayTeam;
  List<Referees>? referees;

  Matches(
      {this.id,
      this.competition,
      this.season,
      this.utcDate,
      this.status,
      this.matchday,
      this.stage,
      this.lastUpdated,
      this.odds,
      this.score,
      this.homeTeam,
      this.awayTeam,
      this.referees});

  Matches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    competition = json['competition'] != null
        ? Competition.fromJson(json['competition'])
        : null;
    season = json['season'] != null ? Season.fromJson(json['season']) : null;
    utcDate = json['utcDate'];
    status = json['status'];
    matchday = json['matchday'];
    stage = json['stage'];
    lastUpdated = json['lastUpdated'];
    odds = json['odds'] != null ? Odds.fromJson(json['odds']) : null;
    score = json['score'] != null ? Score.fromJson(json['score']) : null;
    homeTeam =
        json['homeTeam'] != null ? HomeTeam.fromJson(json['homeTeam']) : null;
    awayTeam =
        json['awayTeam'] != null ? HomeTeam.fromJson(json['awayTeam']) : null;
    if (json['referees'] != null) {
      referees = <Referees>[];
      json['referees'].forEach((v) {
        referees!.add(Referees.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (competition != null) {
      data['competition'] = competition!.toJson();
    }
    if (season != null) {
      data['season'] = season!.toJson();
    }
    data['utcDate'] = utcDate;
    data['status'] = status;
    data['matchday'] = matchday;
    data['stage'] = stage;
    data['lastUpdated'] = lastUpdated;
    if (odds != null) {
      data['odds'] = odds!.toJson();
    }
    if (score != null) {
      data['score'] = score!.toJson();
    }
    if (homeTeam != null) {
      data['homeTeam'] = homeTeam!.toJson();
    }
    if (awayTeam != null) {
      data['awayTeam'] = awayTeam!.toJson();
    }
    if (referees != null) {
      data['referees'] = referees!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Competition {
  int? id;
  String? name;
  Area? area;

  Competition({this.id, this.name, this.area});

  Competition.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    area = json['area'] != null ? Area.fromJson(json['area']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (area != null) {
      data['area'] = area!.toJson();
    }
    return data;
  }
}

class Area {
  String? name;
  String? code;
  String? ensignUrl;

  Area({this.name, this.code, this.ensignUrl});

  Area.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    ensignUrl = json['ensignUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['code'] = code;
    data['ensignUrl'] = ensignUrl;
    return data;
  }
}

class Season {
  int? id;
  String? startDate;
  String? endDate;
  int? currentMatchday;

  Season({
    this.id,
    this.startDate,
    this.endDate,
    this.currentMatchday,
  });

  Season.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    currentMatchday = json['currentMatchday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['startDate'] = startDate;
    data['endDate'] = endDate;
    data['currentMatchday'] = currentMatchday;
    return data;
  }
}

class Odds {
  String? msg;

  Odds({this.msg});

  Odds.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    return data;
  }
}

class Score {
  String? winner;
  String? duration;
  FullTime? fullTime;

  Score({
    this.winner,
    this.duration,
    this.fullTime,
  });

  Score.fromJson(Map<String, dynamic> json) {
    winner = json['winner'];
    duration = json['duration'];
    fullTime =
        json['fullTime'] != null ? FullTime.fromJson(json['fullTime']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['winner'] = winner;
    data['duration'] = duration;
    if (fullTime != null) {
      data['fullTime'] = fullTime!.toJson();
    }
    return data;
  }
}

class FullTime {
  int? homeTeam;
  int? awayTeam;

  FullTime({this.homeTeam, this.awayTeam});

  FullTime.fromJson(Map<String, dynamic> json) {
    homeTeam = json['homeTeam'];
    awayTeam = json['awayTeam'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['homeTeam'] = homeTeam;
    data['awayTeam'] = awayTeam;
    return data;
  }
}

class HomeTeam {
  int? id;
  String? name;

  HomeTeam({this.id, this.name});

  HomeTeam.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Referees {
  int? id;
  String? name;
  String? role;
  String? nationality;

  Referees({this.id, this.name, this.role, this.nationality});

  Referees.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    role = json['role'];
    nationality = json['nationality'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['role'] = role;
    data['nationality'] = nationality;
    return data;
  }
}
