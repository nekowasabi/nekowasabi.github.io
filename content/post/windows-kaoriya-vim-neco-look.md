+++
categories = ["tech"]
date = "2017-08-12T11:37:26+09:00"
draft = false
tags = ["vim"]
title = "Windows版Kaoriya-gvimでneco-lookが動かないときに"

+++
vimを使っていると、たまにneco-lookが動作しなくなる。  
Mac版だと発生せず、Windows版のkaoriya-vimのみで発生する。  
原因が特定できず、ある日突然使えなくなるため、たいそう難儀していた。

neco-look, neocomplete.vim, lookのどれが悪いのだろうと疑っていた。

**が。**

違った。原因はheadコマンドだった。

Unix系OSなら当然の権利であるかのように入っているheadコマンドがWindowsには入っていない。だからエラーが発生していた。  
思い返してみるに、今まで動いていたのはmsys2, cygwin等の入っている環境を入れていたため**結果として動いていた**だけだった。それが再インストールなどでパスからheadコマンドがなくなったとたんに動かなくなっていたのだ。

**で。**

動かすには[GNU utilities for Win32](http://unxutils.sourceforge.net/ ) からhead.exeをパスが通っている場所に保存すればよろしい。  
lookは[ここ](https://github.com/machakann/lookURL ) にあるソースからMINGWなりでビルドすればWindowsで使用できるlookができあがるので、同じくパスの通った場所へ。  

**※現在はneco-lookが修正されており、headは必要ないけれどもメモとして。**
