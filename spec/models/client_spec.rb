require 'spec_helper'

describe Client do
  it 'exports client records as CSV' do
    csv = Client.to_csv
    expect(csv).not_to be_empty
  end
end
