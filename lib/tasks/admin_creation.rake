namespace :repondez do
  desc "Create admin user"
  task :create_admin, [:email, :password] => :environment do |t, args|
    puts args[:email]

    Admin.create!(:email => args[:email], :password => args[:password])
  end
end