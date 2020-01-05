# Provided, don't edit
require 'directors_database'

# A method we're giving you. This "flattens"  Arrays of Arrays so: [[1,2],
# [3,4,5], [6]] => [1,2,3,4,5,6].

def flatten_a_o_a(aoa)
  result = []
  i = 0

  while i < aoa.length do
    k = 0
    while k < aoa[i].length do
      result << aoa[i][k]
      k += 1
    end
    i += 1
  end

  result
end

def movie_with_director_name(director_name, movie_data)
  { 
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end


# Your code after this point

def movies_with_director_key(name, movies_collection)
   arr = []
  i = 0

  while i < movies_collection.length do
    movie_data = movies_collection[i]
    arr << movie_with_director_name(name, movie_data)
    i += 1
  end

  p arr
end


def gross_per_studio(collection)
  i = 0
  collection = movies_collection[i]
  total = 0
  while i < collection. length do
    movies_with_director_name(director_name, movie_data)
end
end

def movies_with_directors_set(source)
  arr = []
  i = 0
  
  while i < source.length do
  dir_names = source[i][:name]
  movie_titles = source[i][:movies]
  hash = source[i]
    arr << movies_with_director_key(dir_names, movie_titles)
    i += 1
  end
  arr
end

# ----------------    End of Your Code Region --------------------
# Don't edit the following code! Make the methods above work with this method
# call code. You'll have to "see-saw" to get this to work!

def studios_totals(nds)
  a_o_a_movies_with_director_names = movies_with_directors_set(nds)
  movies_with_director_names = flatten_a_o_a(a_o_a_movies_with_director_names)
  return gross_per_studio(movies_with_director_names)
end
