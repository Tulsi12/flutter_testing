import 'package:flutter_test/flutter_test.dart';
import 'package:testing/model/arthematic.dart';

void main() {
  group('For Artheamtic',(){
    test('add two numbers', () {
      final arthematic = Arthematic();
      int expectedValue = 7;
      arthematic.firstnumber = 3;
      arthematic.secondnumber = 4;
      int actualValue = arthematic.add();

      expect(actualValue, expectedValue);
    });

    test('subtract two numbers', () {
      final arthematic = Arthematic();
      int expectedValue = 1;
      arthematic.firstnumber = 4;
      arthematic.secondnumber = 3;
      int actualValue = arthematic.subtract();

      expect(actualValue, expectedValue);
    });


  });
}