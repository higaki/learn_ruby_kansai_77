# Ruby初級者向けレッスン 61回
## ブロック

### 演習問題1
0 から 9 までの数値をもつ配列 a がある。

    a = (0..9).to_a     # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

* 各要素を順番に表示しよう。[解答例](https://github.com/higaki/learn_ruby_kansai_77/blob/master/ex1-1.rb)
* 各要素を文字列にした配列を作ろう。[解答例](https://github.com/higaki/learn_ruby_kansai_77/blob/master/ex1-2.rb)
* 各要素を 2倍した値を持つ配列を作ろう。[解答例](https://github.com/higaki/learn_ruby_kansai_77/blob/master/ex1-3.rb)
* 全要素の合計値を計算しよう。[解答例](https://github.com/higaki/learn_ruby_kansai_77/blob/master/ex1-4.rb)

### 演習問題2
0 から 9 までの数値をもつ配列 a がある。

    a = [*0..9]         # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

奇数の要素だけを持つ配列を作ろう。
ただし `odd?` メソッドは使用禁止。
[解答例](https://github.com/higaki/learn_ruby_kansai_77/blob/master/ex2.rb)

### 演習問題3
`Enumerable#map` を自作してみよう。

    module Enumerable
      def my_map
        ......
      end
    end

ただし `Enumerable#map` と `Enumerable#map!` は使用禁止。
[解答例](https://github.com/higaki/learn_ruby_kansai_77/blob/master/ex3.rb)
