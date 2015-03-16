class JobsController < ApplicationController
  def index
    @job = Jobs.all
  end 

  
end
