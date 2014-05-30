class CsvExportsController < ApplicationController
  before_filter :sanitize_resource_class

  def create
    csv_data = @klass.to_csv
    send_data csv_data
  end

  protected

  def sanitize_resource_class
    @klass = params[:resource_class].classify.constantize
  end
end
