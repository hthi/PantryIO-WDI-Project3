require 'unirest'

class Food2forkController < ApplicationController
  def index
    @response = Unirest.get "https://community-food2fork.p.mashape.com/search?key=444b4461faeb4aedd97ae42e37fcf8d0",
    headers:{
    "X-Mashape-Key" => "g575knzsswmshQyUn278VNGeMr3Bp11ZVMNjsnGbfEoYzBiMVj",
    "Accept" => "application/json"
    }

    render json: @response.body
  end

  def update
    @search_response = Unirest.get "https://community-food2fork.p.mashape.com/search?key=444b4461faeb4aedd97ae42e37fcf8d0&" + params.to_query,
     headers:{
    "X-Mashape-Key" => "g575knzsswmshQyUn278VNGeMr3Bp11ZVMNjsnGbfEoYzBiMVj",
    "Accept" => "application/json"
  }
    render json: @search_response.body
  end
end
