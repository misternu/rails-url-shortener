class UrlsController < ApplicationController
  def index
    @urls = Url.all
    @url = Url.new
  end

  def create
    url = Url.new(long: params[:url][:long])
    if url.save
      redirect_to urls_url
    else
      redirect_to urls_url
    end
  end

  def short
    url = Url.find_by(short: params[:short_url])
    redirect_to(url.long)
  end
end
