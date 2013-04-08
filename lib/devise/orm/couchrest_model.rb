require 'devise/orm/couchrest_model/date_time'
require 'orm_adapter_couchrest_model'

CouchRest::Model::Base.send :extend, Devise::Models
