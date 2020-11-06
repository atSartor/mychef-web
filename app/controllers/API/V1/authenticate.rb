module API
  module V1
    class Authenticate < Grape::API
      include API::V1::Defaults
      format :json
      prefix :api

      resource :authenticate do
        post do
          #this is very much a dummy authentication system now
          # TODO: need to eventually verify the received token was generated
          # by Google -- will add in a future version.
          # also this scheme of verifying a token is not a good way
          # to identify a user long term, as tokens change.. often
          if UserToken.exists?(idToken: :id_token)
            #TODO: verify token is authentic
          else
            #TODO: verify token authentic
            # Register token
            @new_user = UserToken.new(idToken: :id_token)
            @new_user.save
          end
        end
      end
    end
  end
end
