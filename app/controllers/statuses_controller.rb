class StatusesController   < ApplicationController

  def show
      respond_to do |wants|
        wants.html { render :text => '123' }
        wants.xml {  }
        wants.json { }
      end
  end 

end
