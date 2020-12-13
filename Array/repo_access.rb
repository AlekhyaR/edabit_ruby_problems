require 'git'

date_time_val = Time.now.strftime("%Y%m%d%H%M%S")
g1 = Git.open("../local-repo/.")

g = Git.clone("https://github.com/AlekhyaR/Hackerrank-Ruby.git", "AlekhyaR", :path => ".././local-repo/#{date_time_val}_Sample_local")

g1 = Git.open("../.")
USERNAME = g1.config('user.name') || "Sample"

g = g.lib.send(:command, "pull")

puts USERNAME