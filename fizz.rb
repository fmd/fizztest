def digit_in_number(digit, n)
  return n.to_s.split('').include? digit.to_s
end

def fizz(n)
  s = ''
  s += 'Fizz' if n % 3 == 0 || digit_in_number(3, n)
  s += 'Buzz' if n % 5 == 0 || digit_in_number(5, n)
  s.length > 0 ? s : n
end

1.upto(100) { |n| puts fizz(n) }
