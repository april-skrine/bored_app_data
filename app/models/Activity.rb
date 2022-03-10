class Activity < ActiveRecord::Base

    belongs_to :mood
    has_many :comments

    def total_comments
        self.comments.pluck(:id).length
    end

    def self.most_popular
        self.all.max_by(&:total_comments)
    end

end