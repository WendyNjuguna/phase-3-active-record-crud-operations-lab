class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        movie = self.new(title: title) 
        movie.save 
        movie 
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        find_by(id:id)
    end

    def self.find_movie_with_attributes(attributes)
        where(attributes).first
    end

    def self.find_movies_after_2002
        where("release_date > 2002")
    end

    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(new_title)
        update_all(title:new_title)
        new_title
    end

    def self.delete_by_id(id)
        movie=self.find_by(id:id)
        if movie
            movie.delete
            true
        else
            false
        end
    end

    def self.delete_all_movies
        self.delete_all
    end
end