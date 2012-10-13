require 'devise/orm/couchrest_model/date_time'

CouchRest::Model::Base.send :extend, Devise::Models
