class IndexpageController < ApplicationController
  def index
  	@permits = Permit.where('lat is not null').all.order(status_date: :desc).limit(100)
  end
end
