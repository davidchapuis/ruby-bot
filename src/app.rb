require 'bundler/setup'
require 'http'
require 'twilio-ruby'
require 'dotenv'
Dotenv.load

require_relative 'scraper/base_scraper'
require_relative 'scraper/mercado_livre_scraper'
require_relative 'utils/save_html_response_to_file'

product_url = 'https://www.mercadolivre.com.br/caixa-de-som-bluetooth-jbl-partybox-encore-essential' \
'-origina-cor-preto-110v220v/p/MLB21595544?pdp_filters=item_id:MLB3800637953#is_advertising=true&sear' \
'chVariation=MLB21595544&position=1&search_layout=grid&type=pad&tracking_id=f13b6da6-d417-4d81-9287-9aa' \
'f9c02275a&is_advertising=true&ad_domain=VQCATCORE_LST&ad_position=1&ad_click_id=ZWE5MjcxYmMtMTIyYi00NT' \
'cxLWFlYjktMzIwZDg1MjExMjhi'

scraper = MercadoLivreScraper.new(product_url)
availability = scraper.check_product_availability
puts(availability)
