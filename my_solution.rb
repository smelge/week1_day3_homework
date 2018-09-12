#
# stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
#
# # Add "Edinburgh Waverley" to the end of the array
# stops.push("Edinburgh Waverley")
# # Add "Glasgow Queen St" to the start of the array
# stops.unshift("Glasgow Queen St")
# # Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
# stops.insert(4,"Polmont")
# # Work out the index position of "Linlithgow"
# p "Linlithgow is key: #{stops.index("Linlithgow")}"
# # Remove "Livingston" from the array using its name
# stops.delete("Livingston")
# # Delete "Cumbernauld" from the array by index
# cumber_index = stops.index("Cumbernauld")
# stops.delete_at(cumber_index)
# # How many stops there are in the array?
# p "There are #{stops.count} stops."
# # How many ways can we return "Falkirk High" from the array?
#
# # 3. Call by key positive and negative, by name.
#
# # Reverse the positions of the stops in the array
# stops = stops.reverse
# p stops
# # Print out all the stops using a for loop
# for station in stops
#   p station
# end



users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# Get Jonathan's Twitter handle (i.e. the string "jonnyt")
# p users["Jonathan"][:twitter]
# # Get Erik's hometown
# p users["Erik"][:home_town]
# # Get the array of Erik's lottery numbers
# p users["Erik"][:lottery_numbers]
# # Get the type of Avril's pet Monty
# p users["Avril"][:pets][0][:species]
# # Get the smallest of Erik's lottery numbers
# erik_lottery = users["Erik"][:lottery_numbers]
# p erik_lottery.sort.first
# # Return an array of Avril's lottery numbers that are even
# avril_lott = users["Avril"][:lottery_numbers]
# for num in avril_lott
#   if (num % 2) == 0
#     p num
#   end
# end
# # Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
# erik_num = users["Erik"][:lottery_numbers]
# erik_num.push(7)
# users["Erik"][:lottery_numbers] = erik_num
# p users["Erik"][:lottery_numbers]
# # Change Erik's hometown to Edinburgh
# users["Erik"][:home_town] = "Edinburgh"
# p users["Erik"][:home_town]
# # Add a pet dog to Erik called "Fluffy"
# users["Erik"][:pets].push({
#   :name => "fluffy",
#   :species => "dog"
# })
# p users["Erik"]

# Add another person to the users hash
# add_bort = {"Bort" => {:twitter => "bortbortbort",
#     :lottery_numbers => [5,18,27,45,12,1],
#     :home_town => "South Queensferry",
#     :pets => [
#       {
#         :name => "clump",
#         :species => "guinea pig"
#       }
#     ]
#   }
# }
# users.merge!(add_bort)
# p users


united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# Change the capital of Wales from "Swansea" to "Cardiff".
# for capital in united_kingdom
#   if capital[:capital] == "Swansea"
#     capital[:capital] = "Cardiff"
#   end
# end
#p united_kingdom

# Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
ni_hash = {name: "Northern Ireland",population:1811000,capital:"Belfast"}
united_kingdom.push(ni_hash)
#p united_kingdom

# Use a loop to print the names of all the countries in the UK.
# for capital in united_kingdom
#   p capital[:name]
# end
# Use a loop to find the total population of the UK.
total_pop = 0
for pop in united_kingdom
  total_pop += pop[:population]
end
p "Total population of UK: #{total_pop}"
