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
  months = ["january", "february", "march", "april", "may", "june", "july",
            "august", "september", "october", "november", "december"]

  puts "Please enter the names of the student & cohort"
  puts "To finish, just hit return twice"
  user_input = gets.chomp

  user = user_input.split()

  while !user_input.empty?
    if months.include? user[1]
      students << { name: user[0], cohort: user[1].to_sym }
      puts "Now we have #{students.count} students"
      user_input = gets.chomp
      user = user_input.split()
    elsif user[1] == nil
      students << { name: user[0], cohort: :september }
      puts "Now we have #{students.count} students"
      user_input = gets.chomp
      user = user_input.split()
    elsif !months.include? user[1]
      puts "You entered a month that is not recognised, add name & cohort again"
      user_input = gets.chomp
      user = user_input.split()
    end
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
  counter = 0
  while counter < students.count
    puts "#{students[counter][:name]} (#{students[counter][:cohort]} cohort)"
    counter += 1
  end
end

def print_footer(names)
  print "Overall, we have #{names.count} great students"
end

students = input_students
#si = student_initial
print_header
student_list(students)
print_footer(students)
