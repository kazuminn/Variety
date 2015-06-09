require "watir-webdriver"

number = ["03","04","05","06","07","08","10","11","12","09","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","62","63"]



number.each do |num|
	#プロファイル
	profile = Selenium::WebDriver::Firefox::Profile.new
	profile['browser.download.dir'] = "/Users/kinoshita/Library/Application Support/Firefox/Profiles"



	#ページ表示
	browser = Watir::Browser.new :firefox, :profile => "default" 
		browser.goto("http://www.osn.u-ryukyu.ac.jp/lecture/wiki/index.php?cmd=edit&page=std%2Fe1457#{num}&refer=Practical-ICT%2F2014")
	sleep 10


	#ほぼ初期化
	browser.text_field(:name,"msg").set(File.read("AA.rb"))
	browser.button(:name, "write").click
	browser.close
end
