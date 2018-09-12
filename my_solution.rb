
stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# Add "Edinburgh Waverley" to the end of the array
stops.push("Edinburgh Waverley")
# Add "Glasgow Queen St" to the start of the array
stops.unshift("Glasgow Queen St")
# Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
stops.insert(4,"Polmont")
# Work out the index position of "Linlithgow"
p "Linlithgow is key: #{stops.index("Linlithgow")}"
# Remove "Livingston" from the array using its name
stops.delete("Livingston")
# Delete "Cumbernauld" from the array by index
cumber_index = stops.index("Cumbernauld")
stops.delete_at(cumber_index)
# How many stops there are in the array?
p "There are #{stops.count} stops."
# How many ways can we return "Falkirk High" from the array?

# 3. Call by key positive and negative, by name.

# Reverse the positions of the stops in the array
stops = stops.reverse
p stops
# Print out all the stops using a for loop
for station in stops
  p station
end
