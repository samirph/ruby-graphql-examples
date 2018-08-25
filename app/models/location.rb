class Location < ApplicationRecord
    has_many :posts

    def self.google_autocomplete term
        res = HTTParty.get("https://maps.googleapis.com/maps/api/place/autocomplete/json?input=Vict&types=(cities)&language=pt_BR&key=AIzaSyAH9uBny84O38wuRFiytVrceaEuja_XWV4")
        res.parsed_response
    end
end
