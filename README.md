# dotfiles

## 導入方法
```
sh ./scripts/dotfilesLink.sh
```
これで色々なファイルがリンクされます
終わり。

## SSH 設定

`pkgs/ssh/config` は dotfiles 本体で管理する公開設定です。GitHub などの公開可能な接続設定はこのファイルに追加します。

個人用のホスト設定は `pkgs/ssh/hosts` の submodule（`git@github.com:taki-d/ssh.git`）で管理し、公開 config の `Include` から読み込みます。秘密鍵はリポジトリに置かず、`~/.ssh` で管理します。

新しい環境で個人用の設定を取得する場合は、SSH リポジトリへのアクセス権を用意して次を実行します。

```sh
git submodule update --init --recursive -- pkgs/ssh/hosts
```

`~/.ssh/config` のリンク先は `pkgs/ssh/config` のままです。submodule を取得していない環境でも、公開設定だけで利用できます。
