# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, k)
  # write your code in Ruby 2.2
  
  # aが空配列のとき, 0のときはローテーションしないのでAを返す
  return a if a.empty? || k == 0
  
  # kの回数ローテーションを繰り返す
  while k > 0 do
    # a配列の最後の値をa空削除し変数valに代入する
    val = a.pop
    # 最後の値を取り除かれた配列aの頭にvalを挿入する
    a = a.unshift(val)
    # kのカウントをマイナス1する
    k -= 1
  end
  
  return a
end

