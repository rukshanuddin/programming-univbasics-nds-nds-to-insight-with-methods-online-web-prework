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
  total_hash = directors_totals(directors_database)
  pp total_hash[:director_data]
end
