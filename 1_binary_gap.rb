# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2
  max_binary_gap = 0
  current_binary_gap = 0
  
  # 1の間か
  after_one = false
  
  while n >= 1 do
    # 2で割ったときに割り切れる(ex: 10000, 10010000) && !で始まっているか
    if n % 2 == 0 && after_one
      current_binary_gap += 1
    # 割って1余るときは1なので0をカウントしない
    elsif n % 2 == 1
      after_one = true
      max_binary_gap = [current_binary_gap, max_binary_gap].max
      current_binary_gap = 0
    end
    n = n / 2
  end
  max_binary_gap
end
