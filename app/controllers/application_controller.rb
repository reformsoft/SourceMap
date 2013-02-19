class ApplicationController < ActionController::Base
	protect_from_forgery

	protected

	def http_auth
		authenticate_or_request_with_http_basic do |u, pw|
			u == "admin" && pw == "password"
		end
	end
end
