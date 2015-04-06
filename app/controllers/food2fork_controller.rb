require 'unirest'

class Food2forkController < ApplicationController
  def show
    @response = Unirest.get "https://community-food2fork.p.mashape.com/search?key=444b4461faeb4aedd97ae42e37fcf8d0&q=shredded+chicken",
    headers:{
    "X-Mashape-Key" => "g575knzsswmshQyUn278VNGeMr3Bp11ZVMNjsnGbfEoYzBiMVj",
    "Accept" => "application/json"
    }

    render json: @response.body

  end
end
