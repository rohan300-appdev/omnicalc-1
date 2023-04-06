class ApplicationController < ActionController::Base

  def blank_square_form
    render({:template => "forms/square.html.erb"})
  end

  def calculate_square
    @num = params["input"]
    @square = @num.to_f ** 2
    render({:template => "forms/square_results.html.erb"})
  end
end
