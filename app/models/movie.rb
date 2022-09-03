class Movie < ActiveRecord::Base
  # CRUD: 'Create', 'Read', 'Update', 'Delete'
  # 'CREATE' methods:
  # Movie.create_with_title: instantiates a movie with a given title, and saves it to the database
  def self.create_with_title(title)
    Movie.create(title: title)
  end

  # 'READ' Methods:
  # Movie.first_movie: returns the first item in the table
  def self.first_movie()
    Movie.first()
  end
  # Movie.last_movie: returns the last item in the table
  def self.last_movie()
    Movie.last()
  end
  # Movie.movie_count: returns the number of records in the table
  def self.movie_count()
    Movie.count()
  end
  # Movie.find_movie_with_id: returns a movie from the table based on its id with the .find method
  def self.find_movie_with_id(id)
    Movie.find(id)
  end
  # Movie.find_movie_with_attributes: returns a movie from the table based on its attributes with the .find_by method
  def self.find_movie_with_attributes(attributes)
    # NOTE: Just a general note --> If you actually wanted to use this
    # You would have to provide the hash itself aka:
    # Movie.find_by({title: "The Sting"})
    Movie.find_by(attributes)
  end
  # Movie.find_movies_after_2002: uses a .where clause to select the appropriate movies released after 2002
  def self.find_movies_after_2002()
    Movie.where("release_date > 2002")
  end

  # NOTE: Ask about this since all of the other methods are 'self.(name of method)', yet this one
  # is just the name of the method, but it itself uses 'self.' within the body of the function
  # 'UPDATE' Methods:
  # Movie#update_with_attributes: updates a single movie using the #update method
  # Related Docs page:
  # https://guides.rubyonrails.org/active_record_basics.html#update
  def update_with_attributes(attributes)
    self.update(attributes)
  end

  # Movie.update_all_titles: updates the title of all records at once using the .update method
  def self.update_all_titles(title)
    Movie.update(title: title)
  end

  def self.delete_by_id(id)
    Movie.destroy(id)
  end

  def self.delete_all_movies()
    Movie.destroy_all()
  end

end
