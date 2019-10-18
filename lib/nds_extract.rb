require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

  result = {}
director_index = 0
while director_index < nds.length do
  director = nds[director_index][:name]
  movie_index = 0
  result[director] = 0
  while movie_index < nds[director_index][:movies].length do
    result[director] += nds[director_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  director_index += 1
end
result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  movie_index = 0
  while movie_index < directors_database[director_data][:movies].length do
    total += directors_database[director_data][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  total
end

def total_value_of_spinner(nds, row_index, column_index)
  coordinate_total = 0
  inner_len = nds[row_index][column_index].length
  inner_index = 0
  while inner_index < inner_len do
    coordinate_total += nds[row_index][column_index][inner_index][:price]
    inner_index += 1
  end
  coordinate_total
end
