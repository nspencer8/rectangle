def rectangle(height, width)
  return 'Input must be numerical' unless (height.is_a? Integer) && (width.is_a? Integer)
  return 'Height and Width must be greater than zero' unless height > 0 && width > 0
  output = '-' * width + "\n"
  (height - 2).times do
    output << '|' + "|\n".rjust(width)
  end
  output << '-' * width
end

puts rectangle(ARGV[0].to_i, ARGV[1].to_i)
