require 'uri'

class ShortUrl < ActiveRecord::Base


	def create_short_url(url) 
		short_url = self.generate_short_url(url)
		return false if short_url === false 

		if self.is_record_exists(short_url) == false 
			# Creating short url
			self.insert_short_url(short_url, url)
		else 
			# Try again
			self.create_short_url(url)
		end

	end

	def generate_short_url(url, max=8)
		# Return short code for url
		Base64.encode64(Time.now.to_f.to_s.sub('.',''))[-11,max]
	end

	def is_record_exists(short_url)
		records = ShortUrl.select('id').find_by(short_url: short_url)
		return true if records.present? 
		false
	end

	def insert_short_url(short_url, url)
	    attributes = { short_url: short_url, url: url, views: 0 }
	    #Helper::DateTimeHelper.current_datetime
	    ShortUrl.create(attributes)
	end

	def create_link(short_code)
		SHORT_HOST + short_code
	end

	def short_url(short_url)
		ShortUrl.select('url').find_by(short_url: short_url)
	end
end