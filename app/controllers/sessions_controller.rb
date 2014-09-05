class SessionsController < Devise::SessionsController
  def create
    respond_to do |format|
      format.json do
        self.resource = warden.authenticate! auth_options

        # Add extra user data here if you want to!
        data = {
          user_token:     self.resource.authentication_token,
          user_email:     self.resource.email
        }
        render json: data, status: 201
      end
    end    
  end
end
