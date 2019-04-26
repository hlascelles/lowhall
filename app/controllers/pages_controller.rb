class PagesController < ActionController::Base
  layout 'application'

  PAGES = %w[index accommodation activities contact location pictures]
  PAGES.each do |page|
    define_method page do
      render "pages/#{page}"
    end
  end
end
