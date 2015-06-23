#Getting value and weight for each boxes

p 'Please enter the nuber of items: '
n = gets.chop.to_i
if n == 0
  p 'The number must be positive!'
  exit
end
W = 15
a = {}
i =0
while i < n
  p 'Please enter the weight of item: '
  weight = gets.chop.to_i
  p 'Please enter the value of item: '
  value = gets.chop.to_i
  a[weight] = value
  i+=1
end
a.to_a

#Calculating optimal solution
all_weight, all_value = 0, 0
weight, value = [], []
for i in a
  all_weight += i[0]
  all_value += i[1]
  weight << i[0]
  value << i[1]
end
if all_weight <= W
  print 'Total value = ', all_value, "$\n"
  print 'Total weight = ', all_weight, ' kg'
else
  all_weight, all_value = 0, 0
  begin
    while all_weight <= W
        
    end
  end
end