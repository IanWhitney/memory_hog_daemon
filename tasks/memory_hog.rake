namespace :memory_hog do
  task :hogit do |t|
    x = ""
    100.times do |n|
      Time.now.to_f.to_s.to_sym
      x += Time.now.to_f.to_s
      x.to_sym
      x += ( rand(100) * rand(100) * rand(100) ).to_s
      x.to_sym
      x += ( rand(1000) ** rand(10000) * rand(100000000) ).to_s
      x.to_sym
    end
  end
end
