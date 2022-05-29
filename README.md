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

## マージの方法
1. ブランチに移動する (例えばdev等)
```
$ git checkout dev
```
2. 次のコマンドを打つと、ブランチissue1をマージできる
```
$ git merge issue1
```
3. プッシュする。
```
$ git push
```
### コンフリクトが起きた場合
コンフリクトが起きたファイル(sample.pyとする)内では
以下みたいな感じになる。
```
>>>>>>> HEAD
# 変更1
print('Hello')
hogehoge
========
# 変更2
some = 1
some += 1
print(some)
<<<<<<
```
どちらが正しいのかを共同作業者と相談して、いらない方を削除してから
sample.pyをコミット・プッシュする。
```
$ git add sample.py
$ git commit -m 'コンフリクト解決'
$ git push
```
これでOK.

## その他の役に立つコマンド
1. コミットのログを見る
```
$ git log
```
2. ディレクトリ(or ファイル)を消したいとき
```
$ git rm [dir(or file) name]
```
3. 他のリモートブランチにチェックアウトしたいとき
```
$ git checkout -b [ローカルのリポジトリ名] origin/[リモートのリポジトリ名]
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


# docker-composeのコマンド
1. コンテナを立ち上げる
```
$ docker-compose up -d
```
2. コンテナに入る
```
$ docker-compose exec web bash
```
3. コンテナから出る
```
$ exit # もしくは Ctr + d
```
4. コンテナを落とす
```
$ docker-compose down
```
