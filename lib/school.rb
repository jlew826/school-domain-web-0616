# code here!
class School
  attr_accessor :roster
 

  def initialize(name)
    @name = name
    @roster = {}
  end



  def add_student (student, grade)

    if roster.key?(grade)
      roster[grade] << student
    else 
      roster[grade] = []
      roster[grade] << student

    end

  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, student_list|
      new_student_list = roster[grade].sort
      roster[grade] = new_student_list
    end
    roster
  end







end
