namespace :sessions do
  desc "Count Database Sessions"
  task :count => :development do
    count = CGI::Session::ActiveRecordStore::Session.count
    puts "Total Sessions Stored : #{count}"
  end

  desc "Clear Database Sessions older than 2 weeks"
  task :prune => :development do 
    CGI::Session::ActiveRecordStore::Session.delete_all[
     "updated_at < ?", 2.weeks.ago ]
  end
end