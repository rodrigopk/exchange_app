namespace :ecb_data do
  desc "Rake task to fetch update the ecb_data on heroku"
  task :fetch do
    puts('XML PATH= '+Rails.root.to_s+"/tmp/rates.xml")
    File.open(Rails.root.to_s+"/tmp/rates.xml", "w") do |file|
      ecb_data = open("https://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml")
      ecb_data.each_line do |line| 
        file.puts line
      end
    end
  end
end