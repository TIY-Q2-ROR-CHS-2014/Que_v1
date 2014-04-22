class Que < ActiveRecord::Base

  def display_name
    "Mr. #{name}"
  end
end
