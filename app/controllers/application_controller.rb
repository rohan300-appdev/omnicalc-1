class ApplicationController < ActionController::Base

  def blank_square_form
    render({:template => "forms/square.html.erb"})
  end

  def calculate_square
    @num = params["input"].to_f
    @square = @num ** 2
    render({:template => "forms/square_results.html.erb"})
  end

  def rand_blank
    render({:template => "forms/rand_blank.html.erb"})
  end

  def rand_results
    @min = params["min"].to_f
    @max = params["max"].to_f
    @num = rand(@min..@max)
    render({:template => "forms/rand_results.html.erb"})
  end

  def sq_root_blank
    render({:template => "forms/sq_root_blank.html.erb"})
  end

  def sq_root_results
    @num = params['input']
    @square_root = @num.to_f ** 0.5
    render({:template => "forms/sq_root_results.html.erb"})
  end

  def pay_blank
    render({:template => "forms/pay_blank.html.erb"})
  end

  def pay_results
    @apr = params['apr'].to_f.round(4)
    @years = params['years'].to_i
    @pri = params['pri'].gsub(',','').to_f
    i = (@apr/100)/12
    n = @years * 12

    @payment = (@pri * i) / (1- (1 + i) **(-n))

    @pri = @pri.round(2).to_s(:currency)
    @payment = @payment.round(2).to_s(:currency)
    @apr = (@apr).to_s(:percentage, { :precision => 4 })
    render({:template => "forms/pay_results.html.erb"})
  end
end
