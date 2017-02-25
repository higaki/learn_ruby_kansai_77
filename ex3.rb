# Enumerable#map を自作してみよう

module Enumerable
  def my_map
  end
end

a = [*0..3]         # => [0, 1, 2, 3]

a.map{|i| i * i}    # => [0, 1, 4, 9]
a.map(&:to_s)       # => ["0", "1", "2", "3"]

i = a.map           # => #<Enumerator: [0, 1, 2, 3]:map>
i.next              # => 0
i.next              # => 1
i.next              # => 2
i.next              # => 3
begin
  i.next            # => 
rescue
  $!                # => #<StopIteration: iteration reached an end>
end
