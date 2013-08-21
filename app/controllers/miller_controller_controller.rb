class MillerControllerController < ApplicationController
  def home
  end

  def results
  	altIn = params[:altIn].to_i
    if(altIn<=0)
      flash.now[:error] = 'Altura invalida!!'
      render 'home'
    else
      @peso=116.82+2.99*(altIn-60)
    end
  end
end
