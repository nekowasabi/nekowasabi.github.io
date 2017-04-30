+++
date = "2015-08-08T16:27:09+09:00"
draft = true
title = "firefox38だとldrnailが動かない"

+++
記事タイトルは嘘。firefoxのバージョンが原因ではない。

原因はGoogleのコードが変更され、今までのsiteinfoでは動かなくなったというお話。
そのため、siteinfの修正が必要。

で、修正したsiteinfoをldrnailで使う設定がこちら。

plugins.options["ldrnail.siteinfo_urls"] = ['https://github.com/nekowasabi/nekowasabi.github.io/raw/master/LDRize_items.json'];

.keysnailに貼り付けて、.keysnailを再読込み。
それでもダメな場合はldrnail-update-siteinfoを実行でいける。自分の場合はいけた。
