module YoutubeVideoInfo
  class Request
    def initialize uri_string, uri_module, requester, response_class, cgi_module
      @uri_module = uri_module
      @uri = @uri_module.parse(uri_string)
      @requester = requester
      @response_class = response_class
      @cgi_module = cgi_module
    end
    def id
      @cgi_module.parse(@uri.query)['v'].first
    end
    def get
      @response_class.new @requester.get(@uri_module.parse("http://www.youtube.com/get_video_info?video_id=#{id}&el=detailpage")), @cgi_module
    rescue => e
      raise self.class.const_set(e.class.to_s, Class.new(e.class)).new(e)
    end
  end
end