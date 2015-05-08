module YoutubeVideoInfo
  require 'bundler'
  require 'net/http'
  require 'uri'
  require 'cgi'
  require 'ostruct'
  Bundler.require
  require_relative 'youtube_video_info/request'
  require_relative 'youtube_video_info/response'
  def self.download url
    Request.new(url, URI, Net::HTTP, Response, CGI).get
  end
end