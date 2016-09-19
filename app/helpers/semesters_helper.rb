module SemestersHelper

    def numeric_grade (grade)
        num_grade = case grade
            when "A" then 4
            when "B" then 3
            when "C" then 2
            when "D" then 1
            else 0
        end
        return num_grade
    end

    def alphabetic_grade (average)
        if (average>=90)
            return "A"
        elsif (average>=80 && average<90)
            return "B"
        elsif (average>=70 && average<80)
            return "C"
        elsif (average>=60 && average<70)
            return "D"
        else 
            return "F"
        end
    end
   
    def average_alphabetic_grade (semester)
        total = 0
        count = 0
        semester.courses.each do |course|
            unless course.grade.eql?("") 
                count = count +1
            end
            total += numeric_grade(course.grade)
        end
        total = total/count
        return alphabetic_grade(total)
    end

        
        



end
