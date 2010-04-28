class ApplicationController < ActionController::Base
  cattr_accessor :application
  before_filter :load_variables_for_liquid_filters
  

  private
  def load_variables_for_liquid_filters
    @@application = self
  end
end
