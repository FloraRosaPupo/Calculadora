# Calculadora em Flutter

## Descrição

Calculadora desenvolvida em Flutter com operações aritméticas, entrada de valores decimais e remoção de dígitos. A lógica de cálculo fica separada da tela e possui testes de regressão.

## Stack e bibliotecas

Flutter/Dart e regras Dart.

Dependências e versões declaradas: [pubspec.yaml](pubspec.yaml).

## Funcionalidades

- Operações aritméticas.
- Entrada decimal.
- Remoção de dígitos.

## Licença

Não há uma licença de distribuição definida para este repositório. Nenhuma licença MIT, Apache ou equivalente é concedida por este README. As atribuições e os direitos dos materiais de terceiros permanecem preservados.

## Validação e limites

Regressões de operações e remoção de dígitos.

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

## Organização e manutenção

Tela, cálculos e inicialização já têm arquivos próprios. A revisão mantém essa separação de uma única funcionalidade e corrige a sincronização do buffer ao apagar; não introduz framework ou camadas vazias.

Veja [a revisão de desenvolvimento](docs/REVISAO.md) para decisões, testes e limites, e [o guia de contribuição](CONTRIBUTING.md) para o fluxo de manutenção.
