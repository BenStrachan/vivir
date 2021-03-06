require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { business_id: @job.business_id, client_id: @job.client_id, completed_date: @job.completed_date, job_type_id: @job.job_type_id, notes: @job.notes, status: @job.status, user_id: @job.user_id, visit_number: @job.visit_number, weekly_visit_total: @job.weekly_visit_total } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { business_id: @job.business_id, client_id: @job.client_id, completed_date: @job.completed_date, job_type_id: @job.job_type_id, notes: @job.notes, status: @job.status, user_id: @job.user_id, visit_number: @job.visit_number, weekly_visit_total: @job.weekly_visit_total } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
