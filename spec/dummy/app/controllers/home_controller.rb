class HomeController < ApplicationController
  if ::Rails::VERSION::MAJOR < 5
    before_filter :set_book
  else
    before_action :set_book
  end

  def index
    render layout: false
  end

  def index_with_layout
  end

  def index_partial
  end

  def index_partial_with_passed_array
    @widgets = ['thing one', 'thing two'].map {|widget_name|
      w = Widget.new
      w.name = widget_name
      Liquid::Rails::Drop.new(w)
    }
  end

  def index_partial_with_full_path
  end

  def index_with_filter
  end

  def erb_with_html_liquid_partial
  end

  private

    def set_book
      @book = { 'name' => 'Liquid on Rails' }
    end
end
