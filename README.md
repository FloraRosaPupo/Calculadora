# Calculadora

Calculadora com operações aritméticas, resto, limpeza e exclusão de dígitos.

## Stack e organização
Flutter/Dart e regras Dart.

Tela, cálculos e inicialização já têm arquivos próprios. A revisão mantém essa separação de uma única funcionalidade e corrige a sincronização do buffer ao apagar; não introduz framework ou camadas vazias.

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


## Funcionalidades

- Operações aritméticas.
- entrada decimal.
- remoção de dígitos.


## Organização e manutenção

Tela, cálculos e inicialização já têm arquivos próprios. A revisão mantém essa separação de uma única funcionalidade e corrige a sincronização do buffer ao apagar; não introduz framework ou camadas vazias.

Veja [a revisão de desenvolvimento](docs/REVISAO.md) para decisões, testes e limites, e [o guia de contribuição](CONTRIBUTING.md) para o fluxo de manutenção.
