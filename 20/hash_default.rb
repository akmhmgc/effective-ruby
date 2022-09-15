hash1 = Hash.new([])
# 存在しないキーを与えた時に常に同じハッシュを参照する
hash1[:hoge].equal?(hash1[:fuga]) #=> true

# 存在しないキーを入れる度にに毎回ブロックが評価される
hash2 = Hash.new { [] }
hash2[:hoge].equal?(hash2[:fuga]) #=> false

# 評価されたブロックに対して << 'hogeしているだけ
hash2[:hoge] << 'hoge'
hash2[:hoge] #=> []

hash2[:hoge] = hash2[:hoge] << 'hoge'
hash2[:hoge] #=> ['hoge']

hash3 = Hash.new { |hash, key| hash[key] = [] }

hash3[:hoge] << 'hoge'
p hash3.keys
p hash3[:hoge]
p hash3[:fuga]
