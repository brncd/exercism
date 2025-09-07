import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String numberString){
    BigInt result = BigInt.zero;
    for (int i = 0; i < numberString.length; i++){
      result += bigPow(BigInt.parse(numberString[i]), numberString.length);
    }
    if (result == BigInt.parse(numberString)){
      return true;
    }else{
      return false;
    }
  }
  BigInt bigPow(BigInt bigNumber, int number){
    BigInt result = BigInt.one;
    for (int i = 0; i < number; i++){
      result *= bigNumber;
    }
    return result;
  }
}