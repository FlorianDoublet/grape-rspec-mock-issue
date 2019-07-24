require 'rails_helper'

RSpec.describe API::V1::DumbEndpoints, type: :request do


  it "will fail a wrong error message" do
    expect(API::V1::Foo).to receive(:bar).with(true)
    get "/api/v1/dumb"
  end

  it "will fail the good error message" do
    expect(API::V1::Foo).to receive(:bar).with(true)
    API::V1::Foo.bar(true, false)
  end

end