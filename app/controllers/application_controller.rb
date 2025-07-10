class ApplicationController < ActionController::Base
  set_current_tenant_by_subdomain_or_domain(:account, :subdomain, :domain)

  allow_browser versions: :modern

  #before_action do
  #  binding.irb
  #end
end
