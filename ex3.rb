# Enumerable#map を自作してみよう

module Enumerable
  def my_map
    unless block_given?
      # ブロックがもらえなければ Enumerator を返す
      to_enum __callee__
    else
      # 空の Array を用意し
      inject([]) do |result, item|
        # ブロックの評価結果を追加する
        result << yield(item)
      end
    end
  end
end

a = [*0..3]         # => [0, 1, 2, 3]

a.map{|i| i * i}    # => [0, 1, 4, 9]
a.my_map{|i| i * i} # => [0, 1, 4, 9]

a.map(&:to_s)       # => ["0", "1", "2", "3"]
a.my_map(&:to_s)    # => ["0", "1", "2", "3"]

i = a.map           # => #<Enumerator: [0, 1, 2, 3]:map>
j = a.my_map        # => #<Enumerator: [0, 1, 2, 3]:my_map>

i.next              # => 0
i.next              # => 1
i.next              # => 2
i.next              # => 3
begin
  i.next            # => 
rescue
  $!                # => #<StopIteration: iteration reached an end>
end

j.next              # => 0
j.next              # => 1
j.next              # => 2
j.next              # => 3
begin
  j.next            # => 
rescue
  $!                # => #<StopIteration: iteration reached an end>
end
