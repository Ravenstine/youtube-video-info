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
    def video_download_headers
      # This is just for convenience.
      # Many of these are here to make the request appear genuine.
      {
        "Connection" => "keep-alive",
        "Origin" => "https://www.youtube.com",
        "X-FirePHP-Version" => "0.0.6",
        "User-Agent" => "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.95 Safari/537.36",
        "Accept" => "*/*",
        "DNT" => "1",
        "Referer" => "https://www.youtube.com/watch?v=#{video_id[0]}",
        "Accept-Encoding" => "gzip, deflate, sdch",
        "Accept-Language" => "en-US,en;q=0.8,de-DE;q=0.6,de;q=0.4"
      }
    end
  end
end