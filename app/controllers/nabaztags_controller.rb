class NabaztagsController < InheritedResources::Base

  layout "application"
  respond_to :html, :xml, :json, :yaml
  
  def sleep
    Nabaztag.find(params[:id]).sleep!
    render :text =>"sleep"
  end

  def wakeup
    Nabaztag.find(params[:id]).wakeup!
    render :text => "wakeup"
  end

  def listen
    @radio=Radio.find(params[:radio])
    Nabaztag.find(params[:id]).listen_radio(Radio.find(params[:radio]))
    render :text => "listen radio: #{@radio.name}"
  end
  
end
    