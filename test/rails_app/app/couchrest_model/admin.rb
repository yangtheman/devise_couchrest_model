require 'shared_admin'

class Admin < CouchRest::Model::Base

  class << self
    # attr_accessible is used by SharedUser. Instead of trying to make a
    # a compatibility method, ignore it and set writer option to private on
    # confirmation_token property.
    def attr_accessible(*args); nil; end
  end

  def update_attribute(name, value)
    update_attributes(Hash[name, value])
  end

  def active?
    false
  end

  include SharedAdmin
  include Shim

  use_database CouchRest.database!("http://admin:admin@127.0.0.1:5984/devise-test-suite")

  ## Database authenticatable
  property :email
  property :encrypted_password

  ## Recoverable
  property :reset_password_token
  property :reset_password_sent_at, Time

  ## Rememberable
  property :remember_created_at, Time

  ## Confirmable
  property :confirmation_token
  property :confirmed_at, Time
  property :confirmation_sent_at, Time
  property :unconfirmed_email

  ## Lockable
  property :locked_at, Time


  timestamps!

  design do
    ## Database authenticatable
    view :by_email
    view :by_encrypted_password

    ## Recoverable
    view :by_reset_password_token
    view :by_reset_password_sent_at

    ## Rememberable
    view :by_remember_created_at

    ## Confirmable
    view :by_confirmation_token
    view :by_confirmed_at
    view :by_confirmation_sent_at
    view :by_unconfirmed_email

    ## Lockable
    view :by_locked_at
  end
end
