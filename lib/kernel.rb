require 'rubygems'
require 'mechanize'

VISITED_URLS = []

def parse(page)
  unless page == nil
    puts '1'
    page.links_with(:text => %r{/[a-z]*}).each {|link|
      puts '2'
      puts link.text

      unless VISITED_URLS.include?(link)
        VISITED_URLS << link
        parse (CRAWLER.click(link))
      end
    }
  end
end

CRAWLER = WWW::Mechanize.new
parse(CRAWLER.get('http://www.kernel.org/pub/scm/'))

