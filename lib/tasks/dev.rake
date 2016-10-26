# /lib/tasks/dev.rake
namespace :dev do

  desc "Rebuild system"
  task :rebuild =>  :fake

  task :fake => :environment do
      puts "Create fake data for development"
      u = User.new( :name => "root")
      u.save
  end
end
