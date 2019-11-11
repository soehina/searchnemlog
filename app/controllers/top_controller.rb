class TopController < ApplicationController
    def home
        agent = Mechanize.new
        page = agent.get("https://nemlog.nem.social/")
        @elements = page.search('.visit-w')
    end
end