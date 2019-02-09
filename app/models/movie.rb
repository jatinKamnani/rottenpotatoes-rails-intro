class Movie < ActiveRecord::Base

    
    def self.get_all_ratings
        temp = Array.new
        self.select('rating').uniq.each {|ele| temp.push(ele.rating)}
        temp.sort.uniq
    end


end
