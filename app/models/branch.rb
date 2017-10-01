class Branch < ApplicationRecord
    
    def self.branch_select
      Branch.all.map {|branch| [branch.branch, branch.id]}
    end
    
end
