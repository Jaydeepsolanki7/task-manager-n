class StaticController < ApplicationController
  # allow_unauthenticated_access only: [:index]

  def index
    if Current.user
      redirect_to tasks_path
    else
      render :index, layout: "application"
    end
  end
end
