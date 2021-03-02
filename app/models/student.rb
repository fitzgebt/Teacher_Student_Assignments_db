class Student < ActiveRecord::Base
    has_many :students_assignments
    has_many :assignments, through: :students_assignments
    has_many :teachers, through: :assignments

    validates :fname, presence: true
    validates :lname, presence: true
    

    def slug
        self.username.downcase.gsub(" ", "-")
      end
      
      def self.find_by_slug(slug)
        self.all.find {|s| s.slug == slug}
      end

end