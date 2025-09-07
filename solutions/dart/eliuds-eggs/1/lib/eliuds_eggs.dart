class EggCounter {
  int count(int num) {
    String binaryNum = num.toRadixString(2);
    List<String> binaryList = binaryNum.split('');
    int eggs = binaryList.where((x) => x == '1').length;
    return eggs;
  }
}
