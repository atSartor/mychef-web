module API
  module V1
    class Authenticate < Grape::API
      include API::V1::Defaults
      format :json
      prefix :api

      resource :authenticate do
        post do

        end
      end
    end
  end
end
