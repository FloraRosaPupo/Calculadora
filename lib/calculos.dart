class Memory {
  // Lista de operações suportadas pela calculadora
  static const operations = const ['%', '÷', '+', '-', 'x', '='];

  // Operação atual
  String _operation = '';

  // Indica se uma operação foi utilizada
  bool _usedOperation = false;

  // Buffer para armazenar os números
  final _buffer = [0.0, 0.0];

  // Índice atual no buffer
  int _bufferIndex = 0;

  // Resultado atual da operação
  String result = '0';

  // Construtor da classe
  Memory() {
    // Inicializa os campos
    _clear();
  }

  // Método para limpar a calculadora
  void _clear() {
    result = '0';
    _buffer.setAll(0, [0.0, 0.0]);
    _bufferIndex = 0;
    _operation = '';
    _usedOperation = false;
  }

  // Método para aplicar um comando à calculadora
  void applyCommand(String command) {
    if (command == 'AC') {
      _clear(); // Limpa a calculadora
    } else if (command == 'DEL') {
      deleteEndDigit(); // Remove o último dígito do resultado
    } else if (operations.contains(command)) {
      _setOperation(command); // Define a operação atual
    } else {
      _addDigit(command); // Adiciona um dígito ao resultado
    }
  }

  // Método para remover o último dígito do resultado
  void deleteEndDigit() {
    result = result.length > 1 ? result.substring(0, result.length - 1) : '0';
  }

  // Método para adicionar um dígito ao resultado
  void _addDigit(String digit) {
    if (_usedOperation)
      result = '0'; // Reinicia o resultado se uma operação foi utilizada

    if (result.contains('.') && digit == '.')
      digit = ''; // Evita múltiplos pontos decimais
    if (result == '0' && digit != '.')
      result =
          ''; // Remove o zero à esquerda se não for uma adição de ponto decimal

    result += digit; // Adiciona o dígito ao resultado

    double? parsedValue = double.tryParse(result);
    if (parsedValue != null) {
      _buffer[_bufferIndex] =
          parsedValue; // Atualiza o buffer com o valor convertido
    }
    _usedOperation = false;
  }

  // Método para definir a operação atual
  void _setOperation(String operation) {
    if (_usedOperation && operation == _operation)
      return; // Retorna se a operação já foi utilizada

    if (_bufferIndex == 0) {
      _bufferIndex = 1;
    } else {
      _buffer[0] = _calculate(); // Calcula o resultado
    }

    if (operation != '=')
      _operation = operation; // Define a operação atual, exceto se for "="

    result = _buffer[0].toString();
    result = result.endsWith('.0')
        ? result.split('.')[0]
        : result; // Remove o ".0" se for um número inteiro

    _usedOperation = true; // Indica que uma operação foi utilizada
  }

  // Método para calcular o resultado da operação
  double _calculate() {
    switch (_operation) {
      case '%':
        return _buffer[0] % _buffer[1]; // Resto da divisão
      case '÷':
        return _buffer[0] / _buffer[1]; // Divisão
      case 'x':
        return _buffer[0] * _buffer[1]; // Multiplicação
      case '+':
        return _buffer[0] + _buffer[1]; // Adição
      case '-':
        return _buffer[0] - _buffer[1]; // Subtração
      default:
        return _buffer[0]; // Valor padrão
    }
  }
}
