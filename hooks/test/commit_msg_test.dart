import 'dart:io';

import 'package:test/test.dart';

void main() {
  test(
      'Dado que a mensagem de commit possui o prefixo "fix:", '
      'Quando o git hook commit-msg for disparado, '
      'Entao o programa deve retornar o exitCode 0', () async {
    // arrange
    ProcessResult result;
    int expected = 0;
    File('.git/COMMIT_EDITMSG').writeAsStringSync('fix: correcao de bug no login');

    // act
    result = await Process.run('hooks/commit-msg', ['.git/COMMIT_EDITMSG'], runInShell: true);
    final actual = result.exitCode;

    // assert
    expect(actual, equals(expected));
  });

  test(
      'Dado que a mensagem de commit não possui qualquer prefixo, '
      'Quando o git hook commit-msg for disparado, '
      'Entao o programa deve retornar o exitCode 1', () async {
    // arrange
    ProcessResult result;
    int expected = 1;
    File('.git/COMMIT_EDITMSG').writeAsStringSync('correcao de bug no login');

    // act
    result = await Process.run('hooks/commit-msg', ['.git/COMMIT_EDITMSG'], runInShell: true);
    final actual = result.exitCode;

    // assert
    expect(actual, equals(expected));
  });
}
