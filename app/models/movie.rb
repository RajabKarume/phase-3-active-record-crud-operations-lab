class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        create(title: title)
    end
    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    def self.movie_count
        Movie.count
    end
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    def self.find_movie_with_attributes(att)
        Movie.find_by(att)
    end
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end
    def update_with_attributes(att)
        update(att)
    end
    def self.update_all_titles(title)
        update(title: title)
    end
    def self.delete_by_id(id)
        delete(id)
    end
    def self.delete_all_movies
        delete_all
    end

end