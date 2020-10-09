validator = GoogleIDToken::Validator.new
begin
 payload = validator.check(token, required_audience, optional_client_id)
 email = payload['email']
rescue GoogleIDToken::ValidationError => e
report "Cannot validate: ${e}"
end