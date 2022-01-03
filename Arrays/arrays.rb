my_fave_numbers =  [1, 35, 71, 102]
puts my_fave_numbers

top_5_foods = [
  "Grilled Cheese",
  "Pizza",
  "Grilled Cheese",
  "Bacon",
  "Grilled Cheese with Bacon"
]

threes = [3, 3.0, '3', '3.0', 'three', :three]
puts threes
p threes


# /////////////////////////////////////////////
# İtems in an Array
# my_array = ['first', 'second', 'third', 'fourth']
# p my_array
# p my_array[0]
#
# p my_array.index('first')
# p my_array.slice(2, 2)
# p my_array[2, 2]
# p my_array[4, 0]
#
# p my_array.first
# p my_array[0]
# p my_array.last
# p my_array[3]
# p my_array[my_array.length - 1 ]
# p my_array[-1]


# /////////////////////////////
# Adding and Deletting

# bands = []
# bands[0] = "Beatles"
#
# p bands
#  bands[3] = "Rolling Stones"
# p bands
#  bands[3] = "Led Zeppelin"
# p bands
#
# bands.push("Salt N Pepa")
# p bands
#
# bands << "Metallica" << "apocalyptica"
# p bands
#
# return_value = bands.pop
# p bands
#
# p return_value
# container = []
# container << bands.pop
#
# p bands.shift
# p bands
#
# return_value = bands.shift
# p bands
#
# p return_value
#
# p bands.index("Led Zeppelin")
# bands.unshift("Blues Brothers")
# p bands
# p bands.index("Led Zeppelin")

# Delete 2

# bands. delete_at(3)
# p bands
#
# bands.delete(nil)
# p bands
# bands.insert(1, "Gorillaz")
# p bands
#
# p container
# container << "Destiny's Child"
# bands + container
# p bands
# bands << container
# bands.concat(container)
# p bands

# ////////////////////////////////////////////
# Hashes

# prices = {
#   "eggs" => 3.0,
#   "milk" => 2.0,
#   "bacon" => 5.0
# }
#
# p prices["eggs"]
#
# my_info = {
#   "name" => "Johny",
#   "job" => "Developer",
#   "likes it?" => true,
#   "age" => 27
# }
#
# puts "I am #{my_info["age"]} years old "
#
# contact_card{
#   :name => "Lee Tony",
#   :email_address => "deneme@gmail.com"
# }
# p contact_card[:name]
# p contact_card['name']
#
# p contact_card["email address".to_sym]

# /////////////////////////////////////////////////
# Hashes 2

favorite_foods = {
  emin: "Pizza",
  ahmet: "burger",
  brian: "köfte",
  lionel: "kaburga",
  kevin: "salamlı sosili fırında burger"
}

p favorite_foods[:lionel]
favorite_foods[:tyra] = "crispy bacon"
p favorite_foods[:tyra]
fovorite_foods[:hunter] = "venison"
p favorite_foods
favorite_foods[:brian] = nil
p fovorite_foods
