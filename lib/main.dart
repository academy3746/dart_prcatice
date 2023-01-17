import 'package:flutter/foundation.dart';

void main() {
  // Static Variable
  var band = "Judas Priest";
  /// 변수의 타입은 직접 지정해줄 수도 있고, 명시적으로 지정해줄 수도 있다.
  /// Dart에서는 var usable을 권장하는 편이다.
  /// 본인은 타입을 직접 명시해주는 것을 선호하는 편임...

  band = "Metal Gods";
  // But! 타입은 일치시켜 줘야 한다.


  // Dynamic Variable
  dynamic singer;
  singer = "Robert Plant";
  singer = "Sum41";
  singer = 015;
  singer = false;
  /// Dynamic can be anything!
  /// But! 권장되지는 않는다...
  /// Dart는 꽤 엄격한 언어임...


  /// What is Null Safety?
  /// -> Means... You are not allowed to refer type "null"...

  // This is type without Null-Safety
  String suck = "Heavy Metal";
  /// suck = null;
  /// -> A value of type 'Null' can't be assigned to a variable of type 'String'.

  // This is type on Null-Safety
  String? damn = "Rock is dead";
  damn = null;
  /// 변수 damn의 타입은 String이 될 수도 있고, null이 될 수도 있다! (nullable)
  /// damn.length;
  /// -> The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  if (damn != null) {
    if (kDebugMode) {
      print(damn);
    }
  } else {
    if (kDebugMode) {
      print("누가 Null 타입을 참조하라고 했노?");
    }
  }
  // ※ 모든 변수들은 기본적으로 non-nullable 타입이다!
  damn?.isNotEmpty;
  // -> 변수 damn이 null이 아니라면? 비어있지 않는 속성을 반환할 것...


  // What is Final? Countdown? LoL...
  // final fuck = "NickelBack";
  const fuck = "NickelBack";
  // fuck = "GreenDay";
  /// -> The final variable 'fuck' can only be set once.
  /// final 타입으로 지정된 변수는 수정 불가...


  // LATE VS CONSTANT
  late final fantasy;
  // 지금 당장은 데이터 값 없이 비어있는 변수타입인데...
  fantasy = "1210038519af4g2910";
  // API라든지... 나중에 넘어오는 값이 있으면 언제 어디서든 변수에 할당 가능!
  // 수정되면 안되는데.. 난 이 값이 뭔지 아직 모른다...

  if (fantasy != null) {
    if (kDebugMode) {
      print(fantasy);
    }
  }

  const sex = "male";
  // 난 이 값이 무엇인지 알고 있다!
  // 그리고 수정될 수 없는 값이지...

  if (sex.isNotEmpty) {
    if (kDebugMode) {
      print(sex);
    }
  }
}
