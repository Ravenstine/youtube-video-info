module YoutubeVideoInfo
  class Response < OpenStruct
    attr_accessor :raw_response
    def initialize http_response, cgi_module
      @cgi_module = cgi_module
      super @cgi_module.parse(http_response)
    end
    def title
      self['title'].first
    end
    def author
      self['author'].first
    end
    def links
      @cgi_module.parse(self['url_encoded_fmt_stream_map'].first)['url']
    end
    def links_by_itag
      parsed_links = {}
      list_of_links = links
      list_of_links.each do |link|
        parsed_link = @cgi_module.parse(link)
        itag = parsed_link['itag'].first
        parsed_links[itag] = link
      end
      parsed_links
    end
  end
end