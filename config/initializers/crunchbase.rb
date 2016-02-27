require 'crunchbase'

Crunchbase::API.key   = '434d70bd0012514693f3e9cfeb03c146'
Crunchbase::API.debug = false

module Crunchbase
  def self.getOrganization(org)
    organization = Crunchbase::Model::Search.search({name: org}, 'organizations')

    return organization
  end
end
