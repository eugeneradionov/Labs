#Getting value and weight for each boxes
p 'Please enter the nuber of items: '
n = gets.chop.to_i
if n == 0
  p 'The number must be positive!'
  exit
end
$maxweight = 15
$weight, $value = [], []
i =0
while i < n
  p 'Please enter the weight of item: '
  a = gets.chop.to_i
  p 'Please enter the value of item: '
  b = gets.chop.to_i
  $weight << a
  $value << b
  i+=1
end
p $value, $weight
#Calculating optimal solution
$all_weight, $all_value, i = 0, 0, 0
$max_values, $max_weights =[], []
loop do
  if i < n
    $all_weight+= $weight[i]
    $all_value+= $value[i]
    $max_values << $all_value
    $max_weights << $all_weight
    i+=1
    if $all_weight > $maxweight
      $all_weight -= $weight[i-1]
      $all_value -= $value[i-1]
    end
  else
    break
  end
end
print 'Optimal values= ', $all_value, "\n", 'Optimal weight= ', $all_weight
