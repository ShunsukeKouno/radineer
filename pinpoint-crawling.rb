require 'anemone'


urls = []
urls.push("http://www.amazon.co.jp/gp/bestsellers/digital-text/2291657051/")
urls.push("http://www.amazon.co.jp/gp/bestsellers/digital-text/2291907051/")
urls.push("http://www.amazon.co.jp/gp/bestsellers/466298/")
urls.push("http://www.amazon.co.jp/gp/bestsellers/466282/")
Anemone.crawl(urls,:depth_limit => 0) do |anemone|
  anemone.on_every_page do |page|
      puts page.url
    end
  end
