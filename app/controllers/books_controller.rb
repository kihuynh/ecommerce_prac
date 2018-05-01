class BooksController < ApplicationController
  def index
    @books = Bestseller.get_bestseller_list
  end
end
