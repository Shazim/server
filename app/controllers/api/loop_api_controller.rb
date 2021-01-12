module Api
  class LoopApiController < ActionController::API
    before_action :doorkeeper_authorize!
    respond_to :json
    
    def current_user
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end
end
