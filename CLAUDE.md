# Calculadora em Flutter

Operações aritméticas, entrada decimal e apagar dígito. A lógica é separada da tela.

## Arquitetura
```
main.dart ──> calculadora.dart (teclado e display, StatefulWidget)
                   └── calculos.dart (lógica pura: operandos, operador, decimal, backspace, resultado)
```
- `lib/calculos.dart` não importa Flutter, então é testável direto.
- Testes: `test/widget_test.dart`.

## Comandos (PowerShell)
```powershell
flutter pub get; flutter analyze --no-fatal-infos --no-fatal-warnings; flutter test
flutter run -d chrome
```

## CI e deploy
- `ci.yml` roda pub get, analyze e test.
- Não há deploy.

## Regras
- Toda correção de cálculo (divisão por zero, decimais, precisão de `double`) vem com **teste de regressão** em `calculos.dart`.
- Nenhuma lógica no widget.
