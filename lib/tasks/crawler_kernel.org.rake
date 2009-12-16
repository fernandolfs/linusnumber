namespace :crawler do

  desc "search for git repositories uris in kernel.org"
  task :kernel => :environment do
    system("ruby lib/kernel.rb")
  end
end

