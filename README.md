# dotfiles

## 導入方法
```
sh ./scripts/dotfilesLink.sh
```
これで色々なファイルがリンクされます
終わり。

## Windows / PowerShell

Windows PowerShell 5.1 と PowerShell 7 の共通設定は `pkgs/powershell/profile.ps1` で管理します。
Tab の補完一覧、上下キーの履歴検索、Emacs キーバインド、対応環境での履歴予測を設定します。
Neovim がインストール済みなら `n` エイリアスと `EDITOR` / `VISUAL` を設定します。
`..` / `...` で親ディレクトリへ移動し、`reload-profile` で設定を再読み込みできます。

Windows の通常権限の PowerShell で、リポジトリのルートから実行します。

```powershell
# 作成予定を確認
.\scripts\setup-powershell.ps1 -WhatIf
# 導入
.\scripts\setup-powershell.ps1
# 現在のセッションにも反映
. $PROFILE.CurrentUserAllHosts
```

スクリプトは Documents の実際の場所を取得し、`WindowsPowerShell` と `PowerShell` の両方に
`dotfiles` ディレクトリのジャンクションを作成します。リンク先は `pkgs/powershell` です。
各フォルダの `profile.ps1` には、そのリンクを通じて共通設定を読み込む一行だけを配置します。
管理者権限や開発者モードは不要です。ジャンクションを利用できるローカルの Windows ファイルシステム上に
リポジトリを置いてください。導入後はリポジトリを移動せず、移動する場合はリンクを作り直してください。

再実行は可能です。既存の異なるプロファイルやリンクがある場合は、変更前に停止します。
既存プロファイルを残す場合は、エラーに表示される読み込み行を手動で追加し、
該当フォルダに `New-Item -ItemType Junction -Path <dotfilesのパス> -Target <pkgs/powershellのパス>` でリンクを作成してください。

実行ポリシーによってブロックされる場合は、組織のポリシーが許す環境でユーザー単位の
`Set-ExecutionPolicy -Scope CurrentUser RemoteSigned` を一度実行してください。
導入スクリプト自体は実行ポリシーを変更しません。

個人用の設定は `pkgs/powershell/profile.local.ps1` に追加できます。このファイルは Git 管理対象外です。
文字コードは PowerShell の標準設定を使用します。

## SSH 設定

`pkgs/ssh/config` は dotfiles 本体で管理する公開設定です。GitHub などの公開可能な接続設定はこのファイルに追加します。

個人用のホスト設定は `pkgs/ssh/hosts` の submodule（`git@github.com:taki-d/ssh.git`）で管理し、公開 config の `Include` から読み込みます。秘密鍵はリポジトリに置かず、`~/.ssh` で管理します。

新しい環境で個人用の設定を取得する場合は、SSH リポジトリへのアクセス権を用意して次を実行します。

```sh
git submodule update --init --recursive -- pkgs/ssh/hosts
```

`~/.ssh/config` のリンク先は `pkgs/ssh/config` のままです。submodule を取得していない環境でも、公開設定だけで利用できます。
