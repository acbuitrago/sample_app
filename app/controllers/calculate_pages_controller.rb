class CalculatePagesController < ApplicationController
  def new
  end

  def results
    altIn = params[:altIn].to_i
    @peso=110+5.06*(altIn-60)
  end
end
