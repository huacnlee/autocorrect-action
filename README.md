# autocorrect-action

GitHub Action to use [AutoCorrect](https://github.com/huacnlee/autocorrect) for lint.

https://github.com/huacnlee/autocorrect

<img width="920" alt="autocorrect lint output" src="https://user-images.githubusercontent.com/5518/191889781-6372ecef-426a-4c67-a1f3-790f8117808e.png">

## Usage

```yml
steps:
  - uses: actions/checkout@v4
  - name: AutoCorrect
    uses: huacnlee/autocorrect-action@v2
```

## Use NPM version AutoCorrect

```yml
steps:
  - uses: actions/checkout@v4
  - name: AutoCorrect
    uses: huacnlee/autocorrect-action@v2
    with:
      use_npm: true
```

## Enable ReviewDog for Report

```yml
steps:
  - uses: actions/checkout@v4
  - name: AutoCorrect
    uses: huacnlee/autocorrect-action@v2
  - name: Report ReviewDog
    if: failure()
    uses: huacnlee/autocorrect-action@v2
    env:
      REVIEWDOG_GITHUB_API_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    with:
      reviewdog: true
```

<img width="819" alt="image" src="https://github.com/huacnlee/autocorrect-action/assets/5518/050d6f62-d461-44fc-a22f-2fb581ba0912">


### Only check changed file by PR

```yml
steps:
  - uses: actions/checkout@v4
  - name: AutoCorrect
    uses: huacnlee/autocorrect-action@v2
    with:
      args: --lint --no-diff-bg-color $(git diff --diff-filter=AM --name-only ${{ github.event.pull_request.base.sha }}}
````
