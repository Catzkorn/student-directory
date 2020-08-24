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

def print_header
  puts "The students of Villains Academy"
  puts "------------------"
end

def student_list(students)
  students.each_with_index { |student, i|
    puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  }
end

def print_footer(names)
  print "Overall, we have #{names.count} great students"
end

students = input_students
print_header
student_list(students)
print_footer(students)
