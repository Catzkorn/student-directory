=begin
students = [
  { name: "Dr. Hannibal Lecter", cohort: :november },
  { name: "Darth Vader", cohort: :november },
  { name: "Nurse Ratched", cohort: :november },
  { name: "Michael Corleone", cohort: :november },
  { name: "Alex DeLarge", cohort: :november },
  { name: "The Wicked Witch of the West", cohort: :november },
  { name: "Terminator", cohort: :november },
  { name: "Freddy Krueger", cohort: :november },
  { name: "The Joker", cohort: :november },
  { name: "Joffery Baratheon", cohort: :november },
  { name: "Norman Bates", cohort: :november },
]
=end

def input_students
  students = []

  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  name = gets.chomp

  while !name.empty?
    students << { name: name, cohort: :november }
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

  students
end

=begin
def student_initial
  puts "Please enter the intial of the students you want to print"
  initial = gets.chomp

  return initial
end
=end

def print_header
  puts "The students of Villains Academy"
  puts "------------------"
end

def student_list(students)
  students.each_with_index { |student, i|
    if student[:name].length < 12
      puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  }
end

def print_footer(names)
  print "Overall, we have #{names.count} great students"
end

students = input_students
#si = student_initial
print_header
student_list(students)
print_footer(students)
