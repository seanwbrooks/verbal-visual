#Prompts user to enter number
print "Enter a number: "

#Converts user's input to an integer (correct data type)
number = gets.chomp.to_i

#the method sum takes a number
def sum(number)

  #there needs to be a list to store all the multiples of 3 and 5 and a running sum
  list_of_multiples_for_number = []
  sum = 0

  #iterates through each natural number to check for multiples
  (1..(number-1)).each do |n|
    if n % 3 === 0 || n % 5 === 0
      #method to store natural number in list
      list_of_natural_numbers.push(n)
    end
  end

  #In Ruby the last line is what's returned when the method is called
  #Here is a method that calculates the sum for all the multiples of 3 and 5
  list_of_natural_numbers.inject(0){|sum, x| sum + x}
end

#This returns the sum
puts "The sum of the multiples of 3 and 5 for #{number} is #{sum(number)}."
