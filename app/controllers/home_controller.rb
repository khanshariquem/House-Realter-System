class HomeController < ApplicationController
  def index
    if current_user.is_realtor && current_user.is_hunter
      session[:dual_role] = true
      session[:as_hunter] = false
      session[:as_realtor] = true
      current_user.is_hunter = false
    elsif current_user.is_realtor && !current_user.is_hunter
      session[:dual_role] = false
      session[:as_hunter] = false
      session[:as_realtor] = true
    elsif !current_user.is_realtor && current_user.is_hunter
      session[:dual_role] = false
      session[:as_hunter] = true
      session[:as_realtor] = false
    else
      session[:dual_role] = false
      session[:as_hunter] = false
      session[:as_realtor] = false
    end
  end
end
