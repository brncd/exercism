import 'dart:math';

class HighScores {
  List<int> scores;

  HighScores(this.scores);

  int latest() {
    if (scores.isEmpty) {
      return 0;
    }
    return scores.last;
  }

  int personalBest() {
    if (scores.isEmpty) {
      return 0;
    }
    return scores.reduce(max);
  }

  List personalTopThree() {
    final sortedScores = List<int>.from(scores);
    sortedScores.sort((a, b) => b.compareTo(a));

    if (sortedScores.length < 3) {
      return sortedScores;
    }
    return sortedScores.take(3).toList();
  }
}
