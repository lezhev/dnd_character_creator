class Dice {
  static const d4 = 'd4';
  static const d6 = 'd6';
  static const d8 = 'd8';
  static const d10 = 'd10';
  static const d12 = 'd12';
  static const d20 = 'd20';
  static const d100 = 'd100';

  int toInt(String dice) {
    switch (dice) {
      case d4:
        return 4;
      case d6:
        return 6;
      case d8:
        return 8;
      case d10:
        return 10;
      case d12:
        return 12;
      case d20:
        return 20;
      case d100:
        return 100;
      default:
        return 0;
    }
  }

  int roll(String dice) {
    return (1 + (DateTime.now().millisecondsSinceEpoch % toInt(dice)));
  }
}
