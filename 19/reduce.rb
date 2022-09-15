# 一般的な使い方
(1..10).reduce(0) { |result, arr| result + arr } #=> 55

users = [
  { name: 'takashi', age: 10 },
  { name: 'tomo', age: 12 },
  { name: 'hide', age: 14 },
  { name: 'yoshi', age: 21 },
  { name: 'yama', age: 25 }
]

youngs = users.each_with_object([]) do |user, users|
  users << user[:name] if user[:age] <= 20
  # 最後にアキュムレータを返す必要がある
end

youngs #=> ["takashi", "tomo", "hide"]
