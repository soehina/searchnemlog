class TopController < ApplicationController
    def home
        agent = Mechanize.new
        page = agent.get("https://nemlog.nem.social/")
        elements = page.search('.visit-w')
        sleep(5)
        elements.each do |element|
            @element=Article.new(:url=>element.get_attribute(:href),:title=>element.inner_text)
            @element.save
        end
        @elements=Article.all
    end
end