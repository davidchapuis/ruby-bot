# frozen_string_literal: true

# This class fetches HTML from a given URL, extracts product information,
# and checks for stock availability.
#
# Attributes:
# - @url [String]: The URL of the product page to scrape.
#
# Example:
#   product_url = 'https://produto.mercadolivre.com.br/MLB-3427959617-mic' \
#   'rofone-sem-fio-dinamico-recarregavel-display-digital-_JM?variation=179' \
#   '653308429#reco_item_pos=2&reco_backend=vip-p2p_mantika&reco_backend_type' \
#   '=low_level&reco_client=pdp-p2p&reco_id=4bccfa1d-85ca-43ee-a132-63b7959a90' \
#   '8e&reco_model=mantika-model'
#
#   scraper = MercadoLivreScraper.new(product_url)
#   availability = scraper.fetch_product_data
class MercadoLivreScraper < BaseScraper
  def check_product_availability
    response = HTTP.get(@url)
    parse_product_availability(response.body.to_s)
  end

  private

  def parse_product_availability(html)
    html.downcase.include?('estoque disponível')
  end
end
