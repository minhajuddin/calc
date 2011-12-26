Sitemap = "http://minhajuddin.com/sitemap.xml"
desc "ping search engines about a change in sitemap"
task :ping do
  [ "http://www.google.com/webmasters/sitemaps/ping?sitemap=",
    "http://www.bing.com/webmaster/ping.aspx?siteMap=" ,
    "http://search.yahooapis.com/SiteExplorerService/V1/updateNotification?appid=YahooDemo&url=" ].each do |url|
    puts `curl #{url}#{Sitemap}`
    end
end
