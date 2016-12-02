class ItemController < ApplicationController

  def list
    @items = Item.all
  end

  def get
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    name = params[:name]
    price = params[:price]
    content = params[:content]
    required_num = params[:required_num]
    image = params[:image]

    # binding pry
    item = Item.create(name: name, price: price, content: content, required_num: required_num)
    item.image = image
    item.save

    redirect_to "/list"
  end
end
