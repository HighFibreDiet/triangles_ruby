require './lib/triangle'

@triangles = []

def main_menu
  puts "Press 'n' to enter a new triangle"
  puts "Press 'l' to list all of your triangles"
  puts "Press 'x' to exit"

  main_choice = gets.chomp
  case main_choice
  when 'n'
    eval_triangle
  when 'l'
    list_triangles
  when 'x'
    puts "See you later!"
  else
    puts "That was not a valid choice. Please choose again."
    puts "\n\n"
    main_menu
  end
end

def eval_triangle
  puts "Enter the length of the first side:"
  side1 = gets.chomp.to_i
  puts "Enter the length of the second side:"
  side2 = gets.chomp.to_i
  puts "Enter the length of the third side:"
  side3 = gets.chomp.to_i

  new_triangle = Triangle.new(side1,side2,side3)
  puts "\n Your triangle is #{new_triangle.type}"

  if new_triangle.type != 'not a triangle'
    @triangles << new_triangle
  end

  puts "\n\n"
  main_menu
end

def list_triangles
  @triangles.each do |triangle|
    puts "Triangle: #{triangle.side1}, #{triangle.side2}, #{triangle.side3} is #{triangle.type}"
  end
  puts "\n\n"
  main_menu
end

main_menu
