require 'selenium-webdriver'

#ブラウザの起動
driver =  Selenium::WebDriver.for:firefox

#waitの指定
driver.manage.timeouts.page_load = 10

driver.nagivate.to 'https://twitter.com/search-home'

elements = driver.find_elements(
  :xpath,"//ul[@class='trend-items js-trend']/li/a")
  elements.each do |element|
    #tweetの表示
    puts element.text
  end
  driver.quit
