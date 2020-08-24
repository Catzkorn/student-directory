students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffery Baratheon",
  "Norman Bates",
]

def print_header
  puts "The students of Villains Academy"
  puts "------------------"
end

def student_list(names)
  names.each { |name|
    puts name
  }
end

def print_footer(names)
  print "Overall, we have #{names.count} great students"
end

print_header
student_list(students)
print_footer(students)
