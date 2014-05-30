require 'spec_helper'

describe CsvExportsController do

  describe "GET 'create'" do
    it "returns http success" do
      get :create, resource_class: 'Client'
      expect(response).to be_success
    end
  end

end
