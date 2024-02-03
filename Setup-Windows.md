# Setup Windows

## Windows全般

### ローカルアカウントに変更

ユーザフォルダ名を変更する。
windowsの変更する前に最初にやる

1. 設定 > アカウント > ユーザの情報 > アカウントの設定
2. ローカルアカウントでのサインインに切り替える
3. パスワード設定
1. 新規ユーザを作成する
2. 作成したユーザーを管理者権限にする
    ⇒作成したユーザー名でユーザーフォルダが作成される
3. 最初のローカルアカウントを削除

### システム > マルチタスク

* ウィンドウのスナップ：オン
  * ウィンドウをスナップしたときに、その次にスナップする対象を提案する：オフ
  * ウィンドウをドラッグしたときに、画面の端までドラッグしなくてもウィンドウをスナップできるようにする
* スナップまたはAlt+Tabを押したときにアプリのタブを表示する：タブを表示しない

### 時刻と言語 > Microsoft IME

* キーとタッチのカスタマイズ
  * キーの割り当て：オン
  * 無変換キー：IME-オフ
  * 変換キー：IME-オン
  * Ctrl + Space：なし
  * Shift + Space：別幅スペース

### 個人用設定

#### ロック画面

* ロック画面の状態：なし

#### タスクバー

* 検索：非表示
* タスクビュー：オフ
* ウィジェット：オフ
* タスクバーの動作
  * タスクバーの配置：左揃え
  * タスクバーをすべてのディスプレイに表示する：なし

#### スタート
* よく使うアプリを表示する：オフ
* 最近開いた項目をスタート、ジャンプリスト、ファイルエクスプローラーに表示する
* ヒント、ショートカット、新しいアプリなどのおすすめを表示します：オフ


### アクセシビリティ > 視覚効果

* アニメーション効果：オフ

### アカウント > サインインオプション

* しばらく操作しなかった場合に、もう一度Windownsへのサインインを求めるタイミング：常にオフ

### アプリ

#### インスタグラムされているアプリ
* 削除
  * Family
  * Cortana
  * People
  * 天気


#### スタートアップ
* オフ
  * Edge
  * OneDirve
  * Logitech Download Assistant


### プライバシーとセキュリティ > 検索アクセス許可
* クラウドコンテンツの検索 
  * Micorosoft アカウント：オフ
  * 職場または学校アカウント：オフ


## Widget機能削除
``` powershell
winget uninstall "windows web experience pack"
```

## Windowsキーの検索でweb検索しない

参考：https://ascii.jp/elem/000/004/080/4080258/

HKEY_CURRENT_USER¥Software¥Policies¥Microsoft¥Windows¥Explorer\DisableSearchBoxSuggestions

``` powershell(管理者権限)
New-Item 'HKCU:\Software\Policies\Microsoft\Windows\Explorer'
New-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Explorer' -Name 'DisableSearchBoxSuggestions' -PropertyType 'DWord' -Value 1
```


### ユーザー アカウント制御の設定

* プログラムがコンピューターに変更を加えようとする場合のみ通知する (デスクトップを暗転しない)

## Explorer
  * 隠しフォルダ、ファイルの表示
  * 拡張子の表示

## scoop

### install

``` powerschell
$env:SCOOP="c:\scoop\tamiwo"
$env:SCOOP_GLOBAL="c:\scoop\global"

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

### とりあえず
```
scoop install git
scoop bucket add extras
```

## SylphyHornPlus
仮想デスクトップの機能拡張アプリ

### install
```
winget 
```


## AutoHotKey(v2)

```
scoop install autohotkey
```

## Chrome
### install
```
scoop install googlechrome
```

## firefox
```
scoop install firefox
```

## zenhan
VSCodeのvimで使う
```
scoop install zenhan
```

## vscode

### install
```
scoop install vscode
```

### extention

共通：
* vim
  * vscodevim.vim
* Windowのカラー設定
  * johnpapa.vscode-peacock
* Git
  * mhutchie.git-graph
* GitHub
  * GitHub.vscode-pull-request-github
  * GitHub.copilot

必要に応じて有効にするもの：
* markdown
  * yzhang.markdown-all-in-one
* AutoHotKey
  cweijan.vscode-autohotkey-plus

## AirParrot3

Apple TV経由でWindowsの画面をTV出力する
有料

1. https://pc-karuma.net/apple-tv-windows-airparrot/
2. インストーラをDL
3. インストール


## WSL

### install
```
wsl --install
```