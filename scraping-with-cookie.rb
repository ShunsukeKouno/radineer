require 'anemone'
require 'nokogiri'
require 'kconv' #日本語文字コード変換ライブラリ

urls = []
urls.push("http://mixi.jp/home.pl?form=h_logo")

cookies = {
  :_ga => "GA1.2.1627930030.1488546053",
  #:1WgTU.resume => "DRezF0Sktc0:1292,2Nf-zTxc1zY:446,438iyJeRKz4:2655,WOvLd37KvWE:747",
  :APISID => "gIVzXRmeqHyn1GIq/AFr42AznDgTbfMeyL",
  :dkv => "8c2fd7e9fbacab1d11c84739d5630aece3QEAAAAdGxpcGn7tdRYMA==",
  :HSID => "A4OZSLMUcqBobW_ob",
  :LOGIN_INFO => "APSEuhMwRQIgXs5Nxmi3rf7h3xEsZSv2CoJskRoyUigT2B5W7YCJ8MsCIQCwS4jv1wIvQ1BBTc-8oeaDLnRwH7xx_H8k7jedN1TkZw:QUQzY2JKWXEtYURLTHh1SXlScDRoYkxWV2dMdEs4M2RWNnBkVEcyTERaVHAzRlMybzI1Tmk1V04xQ2R6Y0VBOTFIazVGeHFOUEVmRXFPSGhxTjBwVTBabkNHeDlkb1pCNUtHNG5pWDI2SVZGVWNmdng3WG5scXBKSEd6M2paNDEwSndlS04xdnJHRjZWZXhrd3oxMkZwTkFtT0RHZEpueTgxbk0zTlZHM05YbWxBWTNod3FERmhjVmZsWmw5QnJ4QWwtTjNVYnRoXzA0N0JmS3VWQ01UZG4wWmptZmlHRk5xUE9rbVY0ZVNwbS1BRmFQREkxY3NBRQ==",
  :PREF => "f1=50000000&f4=4000000&f5=30&f6=8&HIDDEN_MASTHEAD_ID=EB13FzGDpEE&al=ja",
  :s_gl => "ca32fb1cc957fc674962294086ec9702cwIAAABKUA==",
  :SAPISID => "ZKgWjIeTk2o9wzcn/ARSA4D_XGO_OAKv2r",
  :SID => "agREHN8yfFRND-ATrtFsIi_8GOPzZHuLY98ntm7QG0sIJRnziu87yTssFB2On5hzBx9jFQ.",
  :SSID => "AV32vABhL7l6WTwsk",
  :VISITOR_INFO1_LIVE => "PIPns0vBa58",
  :YSC => "IL_R3sHiqHY"
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
