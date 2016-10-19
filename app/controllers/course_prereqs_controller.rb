class CoursePrereqsController < ApplicationController
  before_action :set_course_prereq, only: [:show, :edit, :update, :destroy]

  # GET /course_prereqs
  # GET /course_prereqs.json
  def index
    @course_prereqs = CoursePrereq.all
  end

  # GET /course_prereqs/1
  # GET /course_prereqs/1.json
  def show
  end

  # GET /course_prereqs/new
  def new
    @course_prereq = CoursePrereq.new
  end

  # GET /course_prereqs/1/edit
  def edit
  end

  # POST /course_prereqs
  # POST /course_prereqs.json
  def create
    @course_prereq = CoursePrereq.new(course_prereq_params)

    respond_to do |format|
      if @course_prereq.save
        format.html { redirect_to @course_prereq, notice: 'Course prereq was successfully created.' }
        format.json { render :show, status: :created, location: @course_prereq }
      else
        format.html { render :new }
        format.json { render json: @course_prereq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_prereqs/1
  # PATCH/PUT /course_prereqs/1.json
  def update
    respond_to do |format|
      if @course_prereq.update(course_prereq_params)
        format.html { redirect_to @course_prereq, notice: 'Course prereq was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_prereq }
      else
        format.html { render :edit }
        format.json { render json: @course_prereq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_prereqs/1
  # DELETE /course_prereqs/1.json
  def destroy
    @course_prereq.destroy
    respond_to do |format|
      format.html { redirect_to course_prereqs_url, notice: 'Course prereq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_prereq
      @course_prereq = CoursePrereq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_prereq_params
      params.require(:course_prereq).permit(:course_id, :prereq_id)
    end
end
