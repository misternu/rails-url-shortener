class Url < ActiveRecord::Base
  validates :long, presence: true, format: { with: URI.regexp }
  before_save :shorten_url
  def shorten_url
    self.short = ('a'..'z').to_a.sample(6).join
  end
end
