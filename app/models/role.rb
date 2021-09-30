class Role < ActiveRecord::Base
      has_many :auditions

      def actors
            list =[]
            self.auditions.each do |audition|
                  list << audition.actor
            end
            list
      end

      def locations
            list =[]
            self.auditions.each do |audition|
                  list << audition.location
            end
            list
      end

      def lead
            self.auditions.first ? self.auditions.first : 'no actor has been hired for this role'
      end

      def understudy
            self.auditions.second ? self.auditions.second : 'no actor has been hired for understudy for this role'
      end
end




#!!! Role#auditions returns all of the auditions associated with this role
#!! Role#actors returns an array of names from the actors associated with this role
# !!Role#locations returns an array of locations from the auditions associated with this role

#!! Role#lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
# Role#understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'