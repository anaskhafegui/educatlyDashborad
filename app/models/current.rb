class Current < ActiveSupport::CurrentAttributes
  attribute :account, :user
  attribute :request_id, :user_agent, :ip_address, :current_user

  resets { Time.zone = nil }

  def user=(user)
    super
    self.account = user.account
    self.current_user = 1 
    Time.zone    = user.time_zone
  end
end