# autocorrect-action

GitHub Action to use [AutoCorrect](https://github.com/huacnlee/autocorrect) for lint.

https://github.com/huacnlee/autocorrect

<img width="920" alt="autocorrect lint output" src="https://user-images.githubusercontent.com/5518/191889781-6372ecef-426a-4c67-a1f3-790f8117808e.png">

```yml
steps:
  - name: Check source code
    uses: actions/checkout@main

  - name: AutoCorrect
    uses: huacnlee/autocorrect-action@main
```
