
class NearMeController < ApplicationController
  def index
    @me = Friend.first
  end
end
