import 'package:flutter/material.dart';
import 'package:flutter_scatter/flutter_scatter.dart';
import 'package:word_count/words.dart';

class WordCloudExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = <Widget>[];
    for (var i = 0; i < kWords.length; i++) {
      widgets.add(ScatterItem(kWords[i], i));
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
        word.hashtag,
        style: style,
      ),
    );
  }
}
