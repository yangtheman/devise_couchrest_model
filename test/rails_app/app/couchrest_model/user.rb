require 'shared_user'

class User < CouchRest::Model::Base

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

  include SharedUser
  include Shim
  use_database CouchRest.database!("http://127.0.0.1:5984/devise-test-suite")

  property :username
  property :facebook_token

  ## Database authenticatable
  property :email, :default => ""
  property :encrypted_password, :default => ""

  ## Recoverable
  property :reset_password_token
  property :reset_password_sent_at, Time

  ## Rememberable
  property :remember_created_at, Time

  ## Trackable
  property :sign_in_count, Integer, :default => 0
  property :current_sign_in_at, Time
  property :last_sign_in_at, Time
  property :current_sign_in_ip
  property :last_sign_in_ip

  ## Confirmable
  property :confirmation_token
  property :confirmed_at, Time
  property :confirmation_sent_at, Time

  ## Lockable
  property :failed_attempts, Integer, :default => 0
  property :locked_at, Time
  property :unlock_token

  ## Token authenticatable
  property :authentication_token

  timestamps!

  design do
    view :by_username
    view :by_facebook_token

    ## Database authenticatable
    view :by_email
    view :by_encrypted_password

    ## Recoverable
    view :by_reset_password_token
    view :by_reset_password_sent_at

    ## Rememberable
    view :by_remember_created_at

    ## Trackable
    view :by_sign_in_count
    view :by_current_sign_in_at
    view :by_last_sign_in_at
    view :by_current_sign_in_ip
    view :by_last_sign_in_ip

    ## Confirmable
    view :by_confirmation_token
    view :by_confirmed_at
    view :by_confirmation_sent_at

    ## Lockable
    view :by_failed_attempts
    view :by_locked_at
    view :by_unlock_token

    ## Token authenticatable
    view :by_authentication_token
  end
end
