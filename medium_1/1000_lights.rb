=begin
-switches 1 to n, they all start in off position
-iterate throught the switches and toggle them, starting at multiples of one and ending at n
  -ex if n = 5, you do multiples of 1, then multiples of 2, then 3, then 4, finally multiples of 5.
  - and return an array of the lights that are on

"Write a method that takes one argument, the total number of switches, and returns an Array that
identifies which lights are on after n repetitions."

-assume that the argument is a valid integer greater than or equal to 0

EXAMPLES
Example with n = 5 lights:

    round 1: every light is turned on
    round 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

DATA STRUCTURE
-hash
-array
-boolean
-integer
-range

ALGORITHM
(ex: n = 5)
-def method (lights_on?) that takes a single integer as an argument (n)
    -create an empty hash (switches)
    -set  a variable (counter) equal to 1
    -iterate through the range (1..n) to create a hash key from each number
      - with the value of each key being set to true
         {1 => light_on = true, 2 => light_on = true, ect(up to 5)}
    -LOOP until the counter > n
      -select keys in the (switches) hash whose key is divisible by counter
        -then we set the hash value to true if it was false and false if it was true
          (switches[value] = !switches[value])
    -now we will select all the true values from the hash and push all of those keys into an array
      which we will return
=end

def lights_on?(n)
  switches = Hash.new
  1.upto(n) { |num| switches[num] = false }

  1.upto(n) do |iteration|
    selected = switches.select { |num, _| num % iteration == 0 }
    selected.each { |key, value| switches[key] = !value }
  end

  switches.select { |_, values| values == true }.keys
end
=begin
FURTHER EXPLORATION
lets solve it with an array and square roots
-Math.sqrt(n).round == Math.sqrt(n)
=end
# def lights_on?(number)
#   array = []
#   1.upto(number) { |n| array << n.to_f }
#   lights_on = array.select { |float| Math.sqrt(float).round == Math.sqrt(float) }
#   lights_on.map { |num| num.to_i }
# end

p lights_on?(1000)
