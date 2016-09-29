class ShortenedUrl < ActiveRecord::Base
  validates :user_id, :presence => true

  belongs_to :submitter,
    :primary_key => :id,
    :foreign_key => :user_id,
    :class_name => 'User'

  has_many :visits,
    :primary_key => :id,
    :foreign_key => :shortened_url_id,
    :class_name => 'Visit'

  has_many :visitors,
    :through => :visits,
    :source => :user

  def self.random_code
    while true
      new_code = SecureRandom::urlsafe_base64(12)
      break unless ShortenedUrl.exists?(:short_url => new_code)
    end
    new_code
  end

  def self.create_for_user_and_long_url!(user, long_url)
    short = ShortenedUrl.random_code
    ShortenedUrl.create!(:user_id => user.id, :short_url => short,
                         :long_url => long_url)
  end

  def num_clicks
    visits.length
  end

  def num_uniques
    Visit.select(:shortened_url_id).distinct
  end

  def num_recent_uniques

  end

end
