env :PATH, ENV['PATH'] #要用bundle時必須要加

set :output, 'log/cron.log' #設定log的路徑

every 1.day, :at => "#{(Time.now + 3.minute).strftime("%H:%M %P")}" do
  # runner "MyModel.task_to_run_at_four_thirty_in_the_morning"
  rake "cron:check_cron_job_works"
end

every 1.day, :at => "18:30 pm" do
  # runner "MyModel.task_to_run_at_four_thirty_in_the_morning"
  rake "dev:backup"
end