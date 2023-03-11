namespace :custom_task do
    desc "Print something five times."
    task :something do
    5.times {puts "again do something now"}
    end
end