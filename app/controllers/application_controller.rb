class ApplicationController < ActionController::Base
  protect_from_forgery

  def person_params
    params.require(:person).permit(:id, :name, :phones_attributes => [:id, :place, :number, :_destroy])
  end

end
