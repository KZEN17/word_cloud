import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_scatter/flutter_scatter.dart';
import 'package:word_count/words.dart';

class WordCloudExample extends StatefulWidget {
  @override
  _WordCloudExampleState createState() => _WordCloudExampleState();
}

class _WordCloudExampleState extends State<WordCloudExample> {
  List<Color> colors = [
    Color(0xFFFFC108),
    Color(0xFFFFFFFF),
    Color(0xFF13B9FD),
    Color(0xFF0175C2),
    Color(0xFF02569B),
    Color(0xFFD5D7DA),
    Color(0xFF60646B),
    Color(0xFF202124),
    Colors.green
  ];
  List<String> xWord = [];
  var random = Random();
  List<Word> kWords;
  @override
  void initState() {
    super.initState();
    myWordMap['wordsCountTOT'].forEach((key, value) {
      setState(() {
        xWord.add(key);
        print(xWord.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = <Widget>[];
    for (var i = 0; i < xWord.length; i++) {
      widgets.add(ScatterItem(
          Word(xWord[random.nextInt(xWord.length)],
              colors[random.nextInt(colors.length)], random.nextInt(45), false),
          i));
    }

    final screenSize = MediaQuery.of(context).size;
    final ratio = screenSize.width / screenSize.height;

    return Center(
      child: FittedBox(
        child: Scatter(
          fillGaps: true,
          delegate: ArchimedeanSpiralScatterDelegate(ratio: ratio),
          children: widgets,
        ),
      ),
    );
  }

  Map myWordMap = {
    "wordsCountTOT": {
      "buono": 296,
      "pasticceria": 219,
      "dolce": 190,
      "prezzo": 142,
      "personale": 115,
      "qualità": 111,
      "caffè": 107,
      "euro": 93,
      "servizio": 89,
      "locale": 83,
      "alto": 79,
      "massari": 77,
      "brioche": 73,
      "milano": 68,
      "prodotto": 61,
      "NUMERO": 60,
      "aspettare": 59,
      "maestro": 59,
      "trovare": 58,
      "mignon": 54,
      "pasticcino": 53,
      "bello": 51,
      "gusto": 50,
      "andare": 48,
      "mangiare": 46,
      "crema": 45,
      "provare": 45,
      "nome": 44,
      "gentile": 44,
      "monoporzione": 43,
      "prendere": 43,
      "iginio": 42,
      "monoporzioni": 42,
      "pagare": 40,
      "sapore": 38,
      "persona": 38,
      "pasticcere": 38,
      "stella": 37,
      "the": 37,
      "banco": 36,
      "costo": 35,
      "niente": 34,
      "duomo": 34,
      "vale": 33,
      "posto": 32,
      "assaggiare": 32,
      "piccolo": 31,
      "vedere": 31,
      "grande": 30,
      "caro": 30,
      "pessimo": 30,
      "originale": 30,
      "mai": 30,
      "esperienza": 30,
      "google": 30,
      "torta": 30,
      "sedere": 30,
      "unico": 30,
      "sicuramente": 29,
      "consiglio": 28,
      "traduzione": 28,
      "meglio": 28,
      "entrare": 28,
      "dare": 28,
      "colazione": 28,
      "professionale": 28,
      "bar": 27,
      "cliente": 27,
      "migliore": 27,
      "panettone": 27,
      "tavolo": 26,
      "top": 25,
      "aspettativa": 24,
      "bancone": 24,
      "mettere": 24,
      "sembrare": 24,
      "ordinare": 22,
      "tornare": 22,
      "chiedere": 22,
      "nullo": 22,
      "piacere": 22,
      "portare": 22,
      "esterno": 22,
      "eccezionale": 22,
      "scelta": 21,
      "disponibile": 21,
    },
    "mostUsed": {"buono": 296},
    "negativi": {
      "pasticceria": 114,
      "buono": 95,
      "dolce": 87,
      "prezzo": 79,
      "personale": 63,
      "qualità": 63,
      "caffè": 60,
      "servizio": 58,
      "euro": 57,
      "alto": 51
    },
    "positivi": {
      "buono": 128,
      "pasticceria": 69,
      "dolce": 60,
      "personale": 32,
      "the": 31,
      "prezzo": 28,
      "caffè": 28,
      "massari": 27,
      "gentile": 26,
      "brioche": 24
    }
  };
}

class ScatterItem extends StatelessWidget {
  ScatterItem(this.word, this.index);
  final Word word;
  final int index;

  @override
  Widget build(BuildContext context) {
    final TextStyle style = Theme.of(context).textTheme.bodyText2.copyWith(
          fontSize: word.size.toDouble(),
          color: word.color,
        );
    return RotatedBox(
      quarterTurns: word.rotated ? 1 : 0,
      child: Text(
        word.word,
        style: style,
      ),
    );
  }
}
