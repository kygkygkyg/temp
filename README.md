# gitの使い方

1. 最初にファイルを追加する。
```
$ git add [filename]
```

2. 追加したファイルをコミットする。
```
$ git commit -m 'コメント文章'
```
3. プッシュする。
```
$ git push
```

## その他の役に立つコマンド
1. コミットのログを見る
```
$ git log
```
2. ディレクトリ(or ファイル)を消したいとき
```
$ git rm [dir(or file) name]
```

## エラーが出たとき
1. pushをしたいがエラーが出る
- 原因: pullができていない。
以下のコマンドを実行
```
$ git pull
$ git commit
$ git pull
```
pullをしてブランチを最新にしておく。
その後、pullした内容をコミットしてからpushしてみる
