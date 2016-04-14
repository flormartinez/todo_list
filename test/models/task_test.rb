require 'test_helper'

class TaskTest < ActiveSupport::TestCase

	test 'task without title must be invalid' do
		task = Task.new title: nil
		assert_not task.valid?
	end

	test 'taks has one list' do
		assert_not_nil takes(:one).list
	end

	test 'show incomplete task' do
		incomplete_taks = Task.incomplete
		assert_iincludes inclomplete_tasks, tasks(:one)
	end

	test 'show completes tasks' do
		complete_tasks = Task.complete
		assert_iincludes complete_tasks, tasks(:two)
	end
end
