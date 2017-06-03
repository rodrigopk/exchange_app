class ExchangeController < ApplicationController
  
  def show
    @from = ExchangeRate::CURRENCIES.map{|s| "From "+s  }
    @to = ExchangeRate::CURRENCIES.map{|s| "To "+s  }
  end

  def convert
    date = Date.parse(params['date'])
    from = ExchangeRate::CURRENCIES[params['from'].to_i]
    to = ExchangeRate::CURRENCIES[params['to'].to_i]
    amount = params['amount'].to_i
    result = amount*ExchangeRate.at(date,from,to)
    puts "params: date: #{date.to_s}, from: #{from}, to: #{to}"
    render json: { result: result.round(2)}, status: 200
  end

end
