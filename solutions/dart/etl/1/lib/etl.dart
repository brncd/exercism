class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy){
    final newMap = <String, int>{};
    legacy.forEach((score, letters){
      letters.forEach((letter){
        newMap[letter.toLowerCase()] = int.parse(score); 
      });
    });
    return newMap;
  }
}
