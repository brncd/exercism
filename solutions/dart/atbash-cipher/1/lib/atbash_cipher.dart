class AtbashCipher {
  String encode(String text) {
    StringBuffer encodedBuffer = StringBuffer();
    StringBuffer formattedBuffer = StringBuffer();
    int letterCount = 0;

    for (var rune in text.runes) {
      if ((rune >= 'a'.codeUnitAt(0) && rune <= 'z'.codeUnitAt(0)) ||
          (rune >= 'A'.codeUnitAt(0) && rune <= 'Z'.codeUnitAt(0))) {
        int lowerRune = rune;
        if (rune >= 'A'.codeUnitAt(0) && rune <= 'Z'.codeUnitAt(0)) {
          lowerRune = rune + 32;
        }
        int base = 'a'.codeUnitAt(0);
        int offset = lowerRune - base;
        int mirroredPosition = 25 - offset;
        int finalCode = base + mirroredPosition;
        encodedBuffer.write(String.fromCharCode(finalCode));
      } else if (rune >= '0'.codeUnitAt(0) && rune <= '9'.codeUnitAt(0)) {
        encodedBuffer.write(String.fromCharCode(rune));
      }
    }

    String finalString = encodedBuffer.toString();
    for (int i = 0; i < finalString.length; i++) {
      formattedBuffer.write(finalString[i]);
      letterCount++;
      if (letterCount % 5 == 0 && i < finalString.length - 1) {
        formattedBuffer.write(' ');
      }
    }

    return formattedBuffer.toString().trim();
  }

  String decode(String text) {
    return encode(text).replaceAll(' ', '');
  }
}