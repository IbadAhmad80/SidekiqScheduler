class TaskSchedulerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    DemoApp::Application.load_tasks
    Rake::Task['custom_task:something'].invoke
  end
end
