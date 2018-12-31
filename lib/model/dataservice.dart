import 'dart:convert';

import 'package:gadel/model/fim.dart';

class Dataservice {
  Dataservice();

  List<Fim> watchedHistory(int) {
    // mock data
    List<Fim> fims = new List();
    var data = json.decode('''
      [
        {
            "film": "Captain America: First Avenger",
            "last_watched": "2016-05-07",
            "released": "2011 (July)",
            "series": "Marvel Cinematic Universe",
            "service": "google play"
        },
        {
            "film": "Iron Man",
            "last_watched": "2016-05-11",
            "released": "2008 (May)",
            "series": "Marvel Cinematic Universe",
            "service": "google play"
        },
        {
            "film": "Incredible Hulk",
            "last_watched": "2016-05-29",
            "released": "2008 (June)",
            "series": "Marvel Cinematic Universe",
            "service": "google play"
        },
        {
            "film": "Iron Man 2",
            "last_watched": "watched",
            "released": "2010 (May)",
            "series": "Marvel Cinematic Universe",
            "service": "theatre, xfinity"
        },
        {
            "film": "Thor",
            "last_watched": "watched",
            "released": "2011 (May)",
            "series": "Marvel Cinematic Universe",
            "service": "theatre, xfinity"
        }
      ]
      ''');

    for (var d in data) {
      fims.add(new Fim.fromJson(d));
    }

    return fims;
  }
}
