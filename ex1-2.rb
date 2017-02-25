a = (0..9).to_a         # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# 各要素を文字列にした配列を作ろう

i = 2
i                       # => 2
"#{i}"                  # => "2"
"%d" % i                # => "2"
i.to_s                  # => "2"

a.map{|i| i.to_s}       # => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

# マニアが書くと
a.map(&:to_s)           # => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
