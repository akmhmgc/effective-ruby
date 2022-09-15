
hash = Hash.new([])
# 存在しないキーを与えた時に常に同じハッシュを参照する
p hash[:hoge].equal?(hash[:fuga])
