# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email => "tyler@tyler.com")
User.create(:email => "travis@travis.com")
User.create(:email => "steve@apple.com")

ShortenedUrl.create(:user_id => 4, :short_url => "0x007fd3cbae1630", :long_url => "www.google.com")
ShortenedUrl.create(:user_id => 2, :short_url => "0sBKdY2qKEpBIYhe", :long_url => "www.airbnb.com")
ShortenedUrl.create(:user_id => 4, :short_url => "1MuPofYatP7IwwIg", :long_url => "www.ebay.com")
ShortenedUrl.create(:user_id => 1, :short_url => "ob61WD-tE4khlmQM", :long_url => "www.apple.com")
