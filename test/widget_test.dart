import 'package:flutter_test/flutter_test.dart';
import 'package:calculadora/calculos.dart';
void main() {
  test('exclusão de dígito também altera o operando', () {
    final memory=Memory();
    for(final command in ['1','2','DEL','+','3','=']) { memory.applyCommand(command); }
    expect(memory.result,'4');
  });
  test('limpeza apaga operandos e operação', () {
    final memory=Memory();
    for(final command in ['9','x','8','AC','2','+','3','=']) { memory.applyCommand(command); }
    expect(memory.result,'5');
  });
}
