class NabaztagsController < ApplicationController

  layout "application"

  # GET /nabaztags
  # GET /nabaztags.xml
  def index
    @nabaztags = Nabaztag.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nabaztags }
    end
  end

  # GET /nabaztags/1
  # GET /nabaztags/1.xml
  def show
    @nabaztag = Nabaztag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nabaztag }
    end
  end

  # GET /nabaztags/new
  # GET /nabaztags/new.xml
  def new
    @nabaztag = Nabaztag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nabaztag }
    end
  end

  # GET /nabaztags/1/edit
  def edit
    @nabaztag = Nabaztag.find(params[:id])
  end

  # POST /nabaztags
  # POST /nabaztags.xml
  def create
    @nabaztag = Nabaztag.new(params[:nabaztag])

    respond_to do |format|
      if @nabaztag.save
        flash[:notice] = 'Nabaztag was successfully created.'
        format.html { redirect_to(@nabaztag) }
        format.xml  { render :xml => @nabaztag, :status => :created, :location => @nabaztag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nabaztag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nabaztags/1
  # PUT /nabaztags/1.xml
  def update
    @nabaztag = Nabaztag.find(params[:id])

    respond_to do |format|
      if @nabaztag.update_attributes(params[:nabaztag])
        flash[:notice] = 'Nabaztag was successfully updated.'
        format.html { redirect_to(@nabaztag) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nabaztag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nabaztags/1
  # DELETE /nabaztags/1.xml
  def destroy
    @nabaztag = Nabaztag.find(params[:id])
    @nabaztag.destroy

    respond_to do |format|
      format.html { redirect_to(nabaztags_url) }
      format.xml  { head :ok }
    end
  end
  
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
