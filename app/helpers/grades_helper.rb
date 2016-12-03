module GradesHelper
  def valid_grades
    ["A+","A","A-","B+","B","B-","C+","C","C-","D","F","W","Planned"]
  end

  def total_units (grades)                              #Calculates total units in a semester
    units = 0
    grades.each do |grade|
      unless is_withdrawn(grade) || grade.course == nil   
        units += grade.course.credits
      end
    end
    units
  end

  def units_so_far (grades)                             #Calculates the units taken so far, units passed 
    units = 0
    grades.each do |grade|
      unless is_planned(grade) || is_withdrawn(grade) || grade.course == nil
        units += grade.course.credits
      end
    end
    units
  end

  def cumulative_gpa (grades)                           #Calculates cumulative GPA
    totalGPA = 0
    grades.each do |grade|
      unless is_planned(grade) || is_withdrawn(grade) || grade.course == nil
        totalGPA += grade_weight(grade)*grade.course.credits    #GPA calculation operations
      end
    end
    totalUnits = units_so_far (grades)
    if totalUnits == 0
      0
    else
      totalGPA = totalGPA / totalUnits                            #GPA calculation operations
      totalGPA.round(2)
    end
  end

  def grade_weight (grade)                             #Assigns letter grades weights for GPA calculation
    num_grade = case grade.letter_grade
                  when "A" then  4.0
                  when "A-" then 3.7
                  when "B+" then 3.29
                  when "B" then 3.0
                  when "B-" then 2.7
                  when "C+" then 2.3
                  when "C" then 2.0
                  when "C-" then 1.7
                  when "D+" then 1.3
                  when "D" then 1.0
                  when "D-" then 0.69
                  when "F" then 0.0
                  else nil
                end
    return num_grade
  end

  def is_planned(grade)                               #Checks for planned courses
    grade.letter_grade.eql?("Planned")
  end

  def is_withdrawn(grade)                             #Checks for withrdawn courses
    grade.letter_grade.eql?("W")
  end

  def alphabetical_grade (average)                    #Assigns alphabetical grade using the GPA range
    if (average == nil)
      return nil
    elsif (average == 4.0)
      return "A"
    elsif (average<4 && average>3.7 || average == 3.7)
      return "A-"
    elsif(average<3.7 && average>3.29 || average == 3.29)
      return "B+"
    elsif (average<3.29 && average>3.0 || average == 3.0)
      return "B"
    elsif (average<3.0 && average>2.7 || average == 2.7)
      return "B-"
    elsif (average<2.7 && average>2.3 || average == 2.3)
      return "C+"
    elsif (average<2.3 && average>2.0 || average == 2.0)
      return "C"
    elsif (average<2.0 && average>1.7|| average == 1.7)
      return "C-"
    elsif (average<1.7 && average>1.3 || average == 1.3)
      return "D+"
    elsif (average<1.3 && average>1.0 || average == 1.0)
      return "D"
    elsif (average<1.0 && average>0.69 || average == 0.69)
      return "D-"
    else
      return "F"

    end
  end
end
