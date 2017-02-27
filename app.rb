require 'sinatra'
require_relative 'CashRegister.rb'

#set :port, 4571

get "/" do 
	erb :register, :locals => {:result => "", :display_cost => "", :display_paid => "", :change_due => ""}
end

post "/cashback" do
	cost = params[:amount_due].to_f
	paid = params[:amount_paid].to_f

	change_due = "$ #{((paid - cost).round(3))}"  #horrible float...rounds off weird on its own

	result = cash_register(cost, paid)
	display_cost = "$ #{cost}"
	display_paid = "$ #{paid}"

	erb :register, :locals => {:result => result, :display_cost => display_cost, :display_paid => display_paid, :change_due => change_due}

end
