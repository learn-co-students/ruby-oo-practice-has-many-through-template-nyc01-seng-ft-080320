require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

poulin = Teacher.new("Ms.Poulin", 5, "U.S. History")
maxwell = Teacher.new("Mr.Maxwell", 11, "English")
smith = Teacher.new("Mr.Smith", 2, "English")

sam = Student.new("Sam", "11th")
jesse = Student.new("Jesse", "10th")
april = Student.new("April", "9th")

class1 = Classroom.new(poulin, sam)
class2 = Classroom.new(maxwell, jesse)
class3 = Classroom.new(maxwell, april)
class4 = Classroom.new(smith, sam)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
