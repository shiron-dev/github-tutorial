## コミットメッセージについて

### Conventional Commits とは

Conventional Commits は、Git のコミットメッセージを規約に基づいて書くことで、コミットの意図や変更内容を明確に伝えるための規約です。この規約を守ることで、コミットログが一貫性があり、読みやすくなります。また、自動化されたバージョン管理や、コード品質管理などにも役立ちます。
初めての場合は、ルールを覚えるのに時間がかかるかもしれませんが、Conventional Commits を使うことで、チームメンバー間のコミュニケーションが円滑になり、自動化されたバージョン管理やコード品質管理にも役立ちます。ぜひ、Conventional Commits を活用して、より良いコードを書いていきましょう。

[Conventional Commits](https://www.conventionalcommits.org/ja/)

#### Conventional Commits のルール

Conventional Commits のルールは以下の通りです。

1. フォーマットは以下の通りにする

   ```
   <type>[optional scope]: <description>

   [optional body]

   [optional footer]
   ```

2. type は以下のいずれかにする
   - feat：新しい機能の追加
   - fix：バグの修正
   - docs：ドキュメントの変更
   - style：コードの意味に影響しない変更 (e.g. インデント、スペース、フォーマットなど)
   - refactor：機能の変更やリファクタリング
   - test：テストコードの追加・変更
   - chore：ビルドプロセスの変更や補助ツールの変更など、コードに影響を与えない変更
3. optional scope は変更の範囲を示すために指定する(任意)
4. description は変更内容を簡潔に要約する
5. optional body は変更内容についての詳細を記述する(任意)
6. optional footer は以下のいずれかのフォーマットに従う(任意)
   - BREAKING CHANGE: 破壊的変更を伴う場合に使用する
   - Closes #<issue number>: 関連する Issue をクローズする場合に使用する

### Conventional Commits の例

以下は Conventional Commits の例です。

```
feat: add support for Node 12
```

```
fix(validation): handle undefined errors gracefully

Previously, attempting to validate an undefined value would result in a runtime error. This commit fixes that by adding a check for undefined values and handling them gracefully.
```

```
docs(readme): update instructions for running tests

This commit updates the instructions in the README file to reflect the changes in the test runner configuration.
```
