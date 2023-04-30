## .gitignore とは

.gitignore は Git によって管理されるファイルのうち、バージョン管理しないファイルを指定するためのファイルです。バージョン管理対象外のファイルには、ログファイル、一時ファイル、ビルド結果、キャッシュ、秘密鍵などがあります。

.gitignore ファイルは、Git リポジトリのルートに置かれ、ファイル名は`.gitignore`です。このファイルには、除外するファイルやディレクトリのリストを指定します。指定方法は、ファイル名、ディレクトリ名、拡張子などを指定するパターンを書くことができます。また、コメント行は`#`で始めます。

以下は、例です。

```
# コメント行は#で始まる
*.log           # 拡張子がlogのファイルを除外する
build/          # ディレクトリbuild以下を除外する
.env      # ファイル.envを除外する
```

### .gitignore の設定方法

.gitignore ファイルは、Git リポジトリのルートに置かれます。`.gitignore`という名前の空のファイルを作成し、.gitignore にしたいファイルやディレクトリを指定します。

ファイルを .gitignore にする方法は、ファイル名、ディレクトリ名、拡張子などを指定するパターンを書くことができます。また、以下の特殊なパターンも使用できます。

- `*`: 任意の文字列
- `?`: 任意の一文字
- `[]`: 指定された文字のいずれか一つ
- `!`: 指定されたファイルを除外しない

以下は、例です。

```
# ファイル名を指定する
secret_key

# ディレクトリ名を指定する
build/

# 拡張子を指定する
*.log

# 特定のファイル名を.gitignoreから除外する
!sample.log
```

## グローバルな .gitignore について

.gitignore ファイルは、Git リポジトリごとに設定する必要がありますが、.gitignore ファイルを毎回作成するのは手間です。また、OS が自動的に生成するファイルなど一部のファイルはすべての Git リポジトリで除外する必要があります。これらの問題を解決するために、Git はグローバルな .gitignore ファイルをサポートしています。

グローバルな .gitignore ファイルは、すべての Git リポジトリで共通の .gitignore ファイルです。グローバルな .gitignore ファイルは、ユーザーホームディレクトリに置かれます。Windows の場合、ファイル名は`global.gitignore`、macOS や Linux の場合は`.gitignore_global`です。

### リポジトリの .gitignore とグローバルな .gitignore の使い分け

リポジトリの .gitignore はそのリポジトリを扱うすべての開発者に適用したい .gitignore を記述します。例えば、リポジトリ内に含まれる言語特有の .gitignore などです。
グローバルの .gitignore は自分の環境に合わせた .gitignore を記述するべきです。例えば、OS が自動的に生成するファイルや、エディタが生成するファイルの一部などです。

### グローバルな .gitignore の設定方法

グローバルな .gitignore ファイルを作成するには、以下の手順を実行します。

1. Git Bash またはターミナルを開きます。
2. グローバルな .gitignore ファイルを作成します。デフォルトの参照場所を使用してもいいですし、自分で ~/.gitignore_global と言ったファイルを作成しても良いでしょう。

グローバルな .gitignore ファイルを Git に登録するには、以下の手順を実行します。

1. Git Bash またはターミナルを開きます。
2. `git config`コマンドを使用して、Git が グローバルな .gitignore ファイルを認識するように設定します。
   Windows の場合：
   ```
   git config --global core.excludesfile "%USERPROFILE%\.gitignore_global"
   ```
   macOS や Linux の場合：
   ```
   git config --global core.excludesfile ~/.gitignore_global
   ```

以上で、.gitignore と グローバルな .gitignore ファイルの設定が完了しました。.gitignore を適切に設定することで、不必要なファイルが Git リポジトリに含まれないようになります。

## .gitignore の例

.gitignore は GitHub 公式によってホスティングされたリポジトリのコミュニティ(https://github.com/github/gitignore)があります。一般的にはそのリポジトリの .gitignore を使用すると良いでしょう。
あなたの OS に合わせた .gitignore や普段使用するエディタに合わせたそれをグローバルの .gitignore に設定しておくと良いでしょう。
また、リポジトリを作成する際にはリポジトリで使用する言語やフレームワークなどに合わせた .gitignore をこのリポジトリから探して追加するのも良いでしょう。

また、.gitignore の詳しい設定などについては Git のドキュメントや、GitHub 公式のドキュメントを参照してください。
[Git のドキュメント](https://git-scm.com/docs/gitignore)
[GitHub 公式のドキュメント](https://docs.github.com/ja/get-started/getting-started-with-git/ignoring-files#configuring-ignored-files-for-all-repositories-on-your-computer)
