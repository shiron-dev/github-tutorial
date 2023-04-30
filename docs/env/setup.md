## Git をインストール・セットアップ

### 概要

Git は、分散型バージョン管理システムの 1 つです。Git を使用することで、コードやドキュメントの変更履歴を管理し、複数の人々が同じプロジェクトに取り組むことが容易になります。

このドキュメントでは、Git をインストールし、セットアップする方法について説明します。

### Git のインストール

Git をインストールするには、以下の手順に従ってください。
また、GitHub のドキュメントの手順に従うことでもインストールができます。最新の情報は、このドキュメントを参照するよりも GitHub のドキュメンを参照した方が良い場合があるかもしれません。[GitHub のドキュメント](https://docs.github.com/ja/get-started/quickstart/set-up-git)

#### Windows

1. Git for Windows のダウンロードページ（ https://gitforwindows.org/ ）にアクセスします。
2. ダウンロードページで、"Download" をクリックします。
3. インストーラーをダウンロードし、実行します。
4. インストーラーに従い、Git をインストールします。デフォルトの設定を使用してもかまいません。

#### macOS

##### Homebrew を使ったインストール

1. ターミナルを開き、以下のコマンドを入力します。

```
brew install git
```

##### 公式インストーラーを使ったインストール

1. Git の公式サイト（ https://git-scm.com/download/mac ）にアクセスします。
2. インストーラーをダウンロードし、実行します。
3. インストーラーに従い、Git をインストールします。デフォルトの設定を使用してもかまいません。

#### Linux

##### Debian / Ubuntu

1. ターミナルを開きます。
2. 次のコマンドを実行します。

```
sudo apt update
sudo apt install git
```

### Git のセットアップ

Git をインストールした後、以下の手順に従って Git をセットアップしてください。

1. ターミナルを開きます。
2. Git の設定を行います。

`user.name` と `user.email` には自分の名前とメールアドレスを入力してください。
ここに入力した内容は公開されるためメールアドレスを公開したくない場合は、GitHub が提供しているメールアドレスを使用することができます。[GitHub のドキュメント](https://docs.github.com/ja/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-on-github)

```
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```

3. テキストエディタを設定します。

```
git config --global core.editor "vscode"
```

上記の例では、vscode をテキストエディタとして使用していますが、vim や nano 等、他のテキストエディタを使用する場合は、そのテキストエディタの名前を使用してください。

### GitHub に公開鍵を設定する

このドキュメントでは、SSH の公開鍵を生成し、GitHub に登録して Git で push をする手順について説明します。
または、GitHub の公式ドキュメントを参考に設定することもできます。[GitHub のドキュメント](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh)

#### SSH の公開鍵を生成する

1. ターミナルを開きます。
2. SSH キーの生成を開始するために、以下のコマンドを入力します。

```
ssh-keygen -t ed25519
```

3. まず、鍵の保存先と鍵の名前を入力します。デフォルトのままでいい場合はそのまま Enter キーを押しましょう。例では github という鍵の名前に変更しています。

```
Generating public/private ed25519 key pair.
Enter file in which to save the key (/Users/username/.ssh/id_ed25519):~/.ssh/github
```

4.  パスフレーズを入力し、Enter キーを押します。パスフレーズは、秘密鍵にアクセスするために必要なパスワードです。二度聞かれるので、再度パスフレーズを入力し、Enter キーを押します。画面には入力が表示されないので注意してください。

```
Enter passphrase (empty for no passphrase):<設定したいパスフレーズを入力>
Enter same passphrase again:<設定したいパスフレーズをサイド入力>
```

5.  公開鍵が生成されたら、以下のコマンドを使用して公開鍵を表示し、クリップボードにコピーします。鍵の場所や名前か変えた場合は適宜変更してください。

```
cat ~/.ssh/github.pub
```

#### GitHub に SSH 公開鍵を登録する

1. GitHub の設定ページ( https://github.com/settings/keys )を開きます。
2. New SSH key をクリックします。
3. Title に適当な名前を入力し、Key に先ほどコピーした、SSH 公開鍵を貼り付けます。
4. Add SSH key をクリックします。

#### Git で push をする

1. GitHub からクローンしたリポジトリを開きます。
2. "Code" ボタンをクリックし、SSH を選択します。
3. リポジトリの SSH URL をコピーします。
4. ターミナルを開きます。
5. リポジトリをクローンするために、以下のコマンドを入力します。

#### テスト

これまでの手順で GitHub に SSH で接続できるようになっているはずです。以下のコマンドを実行し、テストをしてみましょう。

```
> ssh -T git@github.com
Hi <あなたのGitHubのユーザー名>! You've successfully authenticated, but GitHub does not provide shell access.
```

このようなメッセージが表示されたら、SSH 公開鍵の生成、登録に成功しています。表示されない場合は、次のようにしてみましょう。

1. お好きなエディターで ~/.ssh/config 開きます。存在しない場合は作成してください。
2. 以下の内容を追加します。`IdentityFile`は自分の秘密鍵に変更してください。上記の例に従った場合はこのままで大丈夫です。

```
Host github.com
IdentityFile ~/.ssh/github
User git
```

3. これでテストを再度行ってみてください。成功するはずです。これでも失敗する場合はプロキシの問題など、さまざまな問題がある場合があります。詳しくは、GitHub の公式ドキュメントを参照してください。[GitHub の公式ドキュメント](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh)
