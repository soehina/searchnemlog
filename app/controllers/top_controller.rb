class TopController < ApplicationController
    def home
        agent = Mechanize.new
        page = agent.get("https://nemlog.nem.social/")
        @elements = page.search('.visit-w')
        # elements.each do |element|
        #     ele_title=element.inner_text
        #     ele_url=element.get_attribute(:href)
        #     @elements=Article.create(url: params[:ele_url],title: params[:ele_title])
        # end
        # @elements=Article.all
    end
end