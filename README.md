[l3tnun/docker-mirakurun-epgstation](https://github.com/l3tnun/docker-mirakurun-epgstation)をforkして自分用にカスタマイズしたリポジトリです。

# docker-mirakurun-epgstation

[Mirakurun](https://github.com/Chinachu/Mirakurun) + [EPGStation](https://github.com/l3tnun/EPGStation) の Docker コンテナ

## 動作環境

### OS情報

- OS: Manjaro Linux x86_64
- Kernel: 5.10.205-1-MANJARO

### チューナー

- [PX-S1UD V2.0](https://hb.afl.rakuten.co.jp/ichiba/37fc1bb2.b653535e.37fc1bb3.4e1a4724/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fkazamidori%2F4580340461977%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MSwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9)
- [DTV02A-1T1S-U](https://hb.afl.rakuten.co.jp/ichiba/37fc20a8.e27e4b68.37fc20a9.c64dda46/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fukachi%2Fdtv02-1t1s-u-op0-01%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MSwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9)

### カードリーダー

- [SCR3310v2.0](https://hb.afl.rakuten.co.jp/ichiba/37fc21f2.062ad387.37fc21f3.eebdedd0/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmatsuyadenki%2F2950083010%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MSwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9)

## 事前準備

- dockerを使用出来る環境

### ドライバのインストール

以下の通りに行う

- https://github.com/nns779/px4_drv

## プロジェクトのセットアップ

```sh
git clone https://github.com/proshunsuke/docker-mirakurun-epgstation.git
cd docker-mirakurun-epgstation
make start
# チャンネルスキャン
curl -X PUT "http://localhost:40772/api/config/channels/scan"
```

mirakurunのEPG更新後に http://localhost:8888 へアクセス

## コマンド

起動

```sh
make start
```

停止

```sh
make stop
```

再起動

```sh
make restart
```

コンテナに入る

```sh
# epgstationコンテナにssh
make ssh/epgstation
# mirakurunコンテナにssh
make ssh/mirakurun
```

DBに接続する

```sh
make db
```

すべてを削除

```sh
make _delete/all
```
