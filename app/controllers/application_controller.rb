class ApplicationController < ActionController::API
  include GraphqlDevise::SetUserByToken
  include GraphqlDevise::Concerns::SetUserByToken
end
