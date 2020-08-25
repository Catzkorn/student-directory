def input_students
  students = {}
  student_count = []
  cohorts = ["january", "february", "march", "april", "may", "june", "july",
             "august", "september", "october", "november", "december"]

  puts "Please enter the names of the student & cohort"
  puts "To finish, just hit return twice"
  user_input = gets.strip

  user = user_input.split()

  while !user_input.empty?
    name = user[0]
    student_count << name
    if user.count < 2
      cohort = "september"
    else
      cohort = user[1]
    end

    if cohorts.include? cohort
      if students[cohort.to_sym].nil?
        students[cohort.to_sym] = [name]
      else
        students[cohort.to_sym] << name
      end

      if students.count == 1
        puts "Now we have #{student_count.count} student"
      else
        puts "Now we have #{student_count.count} students"
      end
    elsif !cohorts.include? user[1]
      puts "You entered a month that is not recognised, add name & cohort again"
    end

    user_input = gets.strip
    user = user_input.split()
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
  students.each { |cohort, students|
    puts cohort.capitalize
    puts students
  }
end

def print_footer(names)
  student_number = 0
  names.each { |cohort, names|
    names.each { |name|
      student_number += 1
    }
  }

  if student_number == 0
    return
  elsif student_number == 1
    print "Overall, we have #{student_number} great student"
  else
    print "Overall, we have #{student_number} great students"
  end
end

students = input_students
#si = student_initial
print_header
student_list(students)
print_footer(students)
