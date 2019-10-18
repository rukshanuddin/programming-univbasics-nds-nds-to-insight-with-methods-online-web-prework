require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

  result = {}
director_index = 0
while director_index < nds.length do
  director = nds[director_index]
  result[director][:name] = gross_for_director(director_data)
  director_index += 1
end
result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  movie_index = 0

  while movie_index < director_data[:movies].length
    total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  total
end
