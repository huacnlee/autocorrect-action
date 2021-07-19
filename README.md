# autocorrect-action

GitHub Action to use [AutoCorrect](https://github.com/huacnlee/autocorrect) for lint.

https://github.com/huacnlee/autocorrect

```yml
steps:
  - name: Check source code
    uses: actions/checkout@master

  - name: Install Rust
    uses: huacnlee/autocorrect-action@master
```
