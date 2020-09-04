class BirdsController < ApplicationController
  # def index
  #   @birds = Bird.all
  #   render plain: "Hello #{@birds[3].name}" 
  # end

  def index
    birds = Bird.all
    # render json: 'Remember that JSON is just object notation converted to a string, so a string will work here too.'
    # render json: {message: 'Hashes of data will get converted to JSON'}
    # render json: ['As', 'well', 'as', 'arrays']

    #render json: @birds

    render json: {birds: birds, messages: ['Hello Birds', 'Goodbye Birds']}
  end
end
