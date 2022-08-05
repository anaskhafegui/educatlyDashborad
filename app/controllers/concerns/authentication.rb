module Authentication
    extend ActiveSupport::Concern
  
    included do
      before_action :authenticate
    end
  
    private
      def authenticate
        if authenticated_user = Administrator.find_by(id: cookies.encrypted[:user_id])
          Current.user = authenticated_user.id
        else
          redirect_to new_session_url
        end
      end
  end