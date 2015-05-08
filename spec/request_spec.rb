require_relative './spec_helper'
require_relative './fakes/fake_cgi'

describe 'request' do
  context 'a valid video url' do
    describe '#id' do
      xit "returns the correct id" do 
        url = "http://youtube.com/watch?v=someid"
        response = YoutubeVideoLinks::Request.new(url, URI, nil, nil, CGI)
        expect(response.id).to eq("someid")
      end
    end
    describe '#get' do
      xit "returns a response object" do 
        url = "http://youtube.com/watch?v=someid"
        response = YoutubeVideoLinks::Request.new(url, URI, nil, nil, FakeCgi)
        expect(response.id).to eq("someid")
      end
    end
  end
end