module SemestersHelper

    def grade_weight (grade)
        num_grade = case grade
            when "A" then 4.0
            when "B" then 3.0
            when "C" then 2.0
            when "D" then 1.0
            else 0.0
        end
        return num_grade
    end

    def alphabetic_grade (average)
        if (average>=4)
            return "A"
        elsif (average>=3 && average<4)
            return "B"
        elsif (average>=2 && average<3)
            return "C"
        elsif (average>=1 && average<2)
            return "D"
        else 
            return "F"
        end
    end
   
    def grade_point_average (semester)
        total = 0
        credits = 0
        semester.courses.each do |course|
            unless course.grade.eql?("") 
                credits += course.credits
            end
            total += grade_weight(course.grade)*course.credits
        end
        total = total/credits
        return total
    end

        
        



end
