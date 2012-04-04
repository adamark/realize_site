module SessionsHelper
  
  def current_user
    @current_user ||= User.find_by_id(session[:user])
  end
  
  def current_user?
    current_user.present?
  end
  
  def login_user!
    if current_user.nil?
      redirect_to login_url
    end
  end
  
  def admin?
    if current_user.admin != true
      redirect_to :root, notice: "Sorry, admins only"
    end
  end
end
