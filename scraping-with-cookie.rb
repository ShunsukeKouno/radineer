require 'anemone'
require 'nokogiri'
require 'kconv' #日本語文字コード変換ライブラリ

urls = []
urls.push("http://mixi.jp/home.pl?form=h_logo")

cookies = {
  :_auid => "",
  :emid => "",
  :session => "",
  :stamp => "",
  :vntgsync => "1"
}
opt{
  :delay => 1,
  :accept_cookies => true,
  :cookies => cookies,
  :depth_limit => 0
}

Anemone.crawl(urls,opts) do |anemone|
  anemone.on_every_page do |page|
      doc = Nokogiri::HTML.parse(page.body.toutf8)
      communityList.each{|community|
      puts community.content
    }
    end
  end
