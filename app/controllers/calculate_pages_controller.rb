class CalculatePagesController < ApplicationController
  def new
  end

  def results
    altIn = params[:altIn].to_i
    if(altIn<=0)
      flash.now[:error] = 'Altura invalida!!'
      render 'new'
    else
      @peso=110+5.06*(altIn-60)
    end
  end
end
