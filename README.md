# Calculadora

Calculadora com operações aritméticas, resto, limpeza e exclusão de dígitos.

## Stack e organização
Flutter/Dart, Dart e Material. A lógica está em `lib/calculos.dart` e a interface em `lib/calculadora.dart`. O botão `%` representa resto da divisão.

## Executar
Use a versão de Flutter registrada em `.github/workflows/ci.yml`.
```sh
git clone https://github.com/FloraRosaPupo/Calculadora.git
cd Calculadora
flutter pub get
flutter run
```

## Verificações
```sh
flutter analyze --no-fatal-infos --no-fatal-warnings
flutter test
```
A CI verifica erros de análise e os testes. Avisos e sugestões continuam visíveis no relatório do analisador. Testes locais não substituem a validação no dispositivo e dos serviços externos.

## Contribuir
Abra uma branch por alteração, descreva o comportamento esperado e inclua testes para regras ou regressões. Mantenha credenciais e arquivos gerados fora do Git.

## Licença
Não há licença de distribuição definida neste repositório.
