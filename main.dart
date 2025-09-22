import 'dart:math';

void main() {
  final passwordLength = 16;

  const allowedCharacters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+-=[]{};:"|,.<>/?';

  final random = Random();

  final password = StringBuffer();

  for (var i = 0; i < passwordLength; i++) {
    final randomIndex = random.nextInt(allowedCharacters.length);
    password.write(allowedCharacters[randomIndex]);
  }

  print('Your generated password is: ${password.toString()}');
}