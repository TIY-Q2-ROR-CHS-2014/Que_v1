class HomeController < ApplicationController
  # respond_to :html

  def index
    @people_in_que = Que.all
    # respond_with @people_in_que
  end
end
