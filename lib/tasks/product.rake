namespace :product do
  desc "scrape product infos from online store"
  task :magic => :environment do
    Product.where.not(state: Product.states["detailed"]).find_each do |p|
      p.magic!
    end
  end
end