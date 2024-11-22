# frozen_string_literal: true

# Abstract base class for building webscrapers that check product availability
class BaseScraper
  def initialize(url)
    @url = url
  end

  def check_product_availability
    raise NotImplementedError, 'This method should be implemented in a subclass'
  end
end
