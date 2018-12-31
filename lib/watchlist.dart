import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gadel/model/dataservice.dart';
import 'package:gadel/model/fim.dart';


class Watchlist extends StatefulWidget {
    @override
    WatchlistState createState() => new WatchlistState();
}

class WatchlistState extends State<Watchlist> {
    final _watchedMovies = <Fim>[];
    final Dataservice _ds = new Dataservice();

    Widget build(BuildContext context) {
        //Watchlist watchlist;
        //return Text('Alo mond');
        return Scaffold(
//            appBar: AppBar(
//                title: Text('Startup Name Generator'),
//            ),
            body: _buildWatchedFilm(),
        );
    }

    Widget _buildWatchedFilm() {
        return ListView.builder (
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context, i) {
                if (i.isOdd) return Divider();

                final index = i ~/ 2;
                if (index >= _watchedMovies.length) {
                    _watchedMovies.addAll(_ds.watchedHistory(5)); /*4*/
                }
                return _buildRow(_watchedMovies[index]);
            }
        );
    }

    Widget _buildRow(Fim fim) {
        return ListTile(
            title: Text(
                fim.seriName + " " +
                    fim.fimName + " " +
                    fim.releasedTS + " " +
                    fim.watchedTS
            ),
        );
    }
}
