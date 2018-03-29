#define method - How to Implement Metaprogramming in Ruby with define_method

class Author
  genres = %w(fiction coding history)

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

Author.new.coding_details("Andrew LLoyd ")
Author.new.fiction_details("Andrew 2")