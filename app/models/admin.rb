class Admin < ActiveRecord::Base
  before_create CreateAgeAtCallback.new
end
