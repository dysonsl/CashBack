require 'sinatra'
require_relative 'CashRegister.rb'

get "/" do 
	erb :register, :locals => {:result => "", :cost => "", :paid => "", :change_due => ""}
end

post "/cashback" do
	cost = params[:amount_due].to_f
	paid = params[:amount_paid].to_f

	change_due = paid - cost  #need to figure out how to avoid this horrible float
	
	result = cash_register(cost, paid)

	erb :register, :locals => {:result => result, :cost => cost, :paid => paid, :change_due => change_due}

end
