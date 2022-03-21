class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end
    
    def lead
        hired_true = self.auditions.where(hired: true)
        hired_true ? hired_true.first : "no actor has been hired for this role"    
    end

    def understudy
        hired_true = self.auditions.where(hired: true)
        hired_true.second || "no actor has been hired for understudy for this role"    
    end
end