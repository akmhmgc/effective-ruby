
hash1 = Hash.new([])
# 存在しないキーを与えた時に常に同じハッシュを参照する
hash1[:hoge].equal?(hash1[:fuga]) #=> true

# 存在しないキーを入れる度にに毎回ブロックが評価される
hash2 = Hash.new{[]}
hash2[:hoge].equal?(hash2[:fuga]) #=> false

hash2[:hoge] << 'hoge'
p hash2[:hoge]
