require 'rubygems'
require 'mechanize'

VISITED_URLS = []

def parse(page)

  unless page == nil
    url = page.uri.to_s
    VISITED_URLS << url

    if url =~ %r{\.git}
      puts url
      return
    end

    page.links_with(:text => %r{/[a-z]*}).each {|link|
      unless VISITED_URLS.include?(link)
        parse (CRAWLER.click(link))
      end
    }
  end
end

CRAWLER = WWW::Mechanize.new
parse(CRAWLER.get('http://www.kernel.org/pub/scm/'))

