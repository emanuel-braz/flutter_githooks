## E aí, bora descomplicar o git hooks?

### Todos os detalhes, neste [artigo do medium](https://medium.com/@fastencoding/git-hooks-para-flutter-engineers-177a696bf119)

https://medium.com/@fastencoding/git-hooks-para-flutter-engineers-177a696bf119

- Crie git hooks para o seu projeto, sem usar nenhuma biblioteca.
- Escreva todos os hooks usando apenas Dart (ou linguagem da sua escolha).
- Compartilhe os hooks do projeto com o time.
- Crie testes funcionais para seus git hooks.
- Bloqueie commits que não seguem as regras de Code Style do projeto.
- Bloqueie commits que estão com erros de compilação.
- Rode os testes do projeto toda vez que der um `git push`.
- Garanta que o time esteja utlizando mensagem de commits que seguem o "Conventional Commits". 

---

#### Para ativar os git hooks de demonstração, execute:
```shell
make install-hooks
```

#### Para desativar os git hooks de demonstração, execute:
```shell
make uninstall-hooks
```

#### Para rodar os testes dos git hooks, execute:
```shell
make test-hooks
```