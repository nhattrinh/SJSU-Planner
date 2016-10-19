require 'test_helper'

class CoursePrereqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_prereq = course_prereqs(:one)
  end

  test "should get index" do
    get course_prereqs_url
    assert_response :success
  end

  test "should get new" do
    get new_course_prereq_url
    assert_response :success
  end

  test "should create course_prereq" do
    assert_difference('CoursePrereq.count') do
      post course_prereqs_url, params: { course_prereq: { course_id: @course_prereq.course_id, prereq_id: @course_prereq.prereq_id } }
    end

    assert_redirected_to course_prereq_url(CoursePrereq.last)
  end

  test "should show course_prereq" do
    get course_prereq_url(@course_prereq)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_prereq_url(@course_prereq)
    assert_response :success
  end

  test "should update course_prereq" do
    patch course_prereq_url(@course_prereq), params: { course_prereq: { course_id: @course_prereq.course_id, prereq_id: @course_prereq.prereq_id } }
    assert_redirected_to course_prereq_url(@course_prereq)
  end

  test "should destroy course_prereq" do
    assert_difference('CoursePrereq.count', -1) do
      delete course_prereq_url(@course_prereq)
    end

    assert_redirected_to course_prereqs_url
  end
end
