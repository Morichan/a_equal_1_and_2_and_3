# Japanese

Please go to English Section if you don't read Japanese.



## (a == 1 && a == 2 && a == 3) を常に真にできますか？

一見不可能そうなものを、如何にして成功させるかという遊びです。

元ネタは次のサイトを参照してください。

https://stackoverflow.com/questions/48270127/can-a-1-a-2-a-3-ever-evaluate-to-true



## 機能

全ての真偽値判定を真にします。

* シジルの変更によって
* `"=="` 演算子のオーバーロードによって



## 使い方

```
$ perl a_equal_1_and_2_and_3.pl
True! 1
True! 2
```



# English

## (a == 1 && a == 2 && a == 3) を常に真にできますか？

It is a game of how to make things that seemingly impossible to be successful.

For the original story please refer to the following site.

https://stackoverflow.com/questions/48270127/can-a-1-a-2-a-3-ever-evaluate-to-true



## Feature

Make all true / false judgments true.

* By changing Sigil
* By overloading operator



## Usage

```
$ git clone https://github.com/Morichan/a_equal_1_and_2_and_3
$ cd ./a_equal_1_and_2_and_3
$ perl a_equal_1_and_2_and_3.pl
True! 1
True! 2
```

