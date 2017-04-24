namespace :fix do
  desc "fix old company_ids in those paper_records whose order's company has been modified."
  task :wrong_company_ids => :environment do
    o_pr_ids = {};
    PaperRecord.find_each { |pr| o_pr_ids[pr.id] = pr.order.id if pr.company_id != pr.order.company_id };
    PaperRecord.where(id: o_pr_ids.keys).each do |pr|
      pr.update(company_id: pr.order.company_id)
    end
    puts o_pr_ids
  end
end