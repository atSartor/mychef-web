#validator = GoogleIDToken::Validator.new
#begin
# payload = validator.check(token, required_audience, optional_client_id)
# email = payload['email']
#rescue GoogleIDToken::ValidationError => e
#report "Cannot validate: ${e}"
#end
module API
  module V1
    class Validator < Grape::API
      include API::V1::Defaults
      resource :validator do
        desc "Return all recipes"
        get "" do
          Recipe.all
        end
      end
    end
  end
end