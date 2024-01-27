require "rails_helper"

RSpec.describe Shortener do
      it "shortens a given URL to a 7 characters lookup code" do
            url = "https://rubygems.org/gems/rspec-rails/versions/6.1.1"
            shortener = Shortener.new(url)
            expect(shortener.lookup_code.length).to eq(7)
      end
end
