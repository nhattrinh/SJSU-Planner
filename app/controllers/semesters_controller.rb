class SemestersController < ApplicationController
    def index
        @semesters = Semester.all
    end
    def show 
        @semester = Semester.find(params[:id])
    end

    def new
        @semester = Semester.new       
    end

    def edit
        @semester = Semester.find(params[:id])
    end

    def create
        @semester = Semester.new(semester_params)

        if @semester.save
            redirect_to @semester
        else 
            render 'new'
            end
    end

    def update
        @semester = Semester.find(params[:id])
        if@semester.update(semester_params)
            redirect_to@semester
        else
            render 'edit'
        end
    end

    def destroy
        @semester = Semester.find(params[:id])
        @semester.destroy

        redirect_to semesters_path
    end
    

    private 
        def semester_params
            params.require(:semester).permit(:name, :year)
        end
end
