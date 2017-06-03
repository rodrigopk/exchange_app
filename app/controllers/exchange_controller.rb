class ExchangeController < ApplicationController
  
  def show
    @hello = ExchangeRate.at(Date.new(2017,6,2),'GBP','USD')
  end

end
