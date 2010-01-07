class RadiosController < ApplicationController
  # GET /radios
  # GET /radios.xml

  layout "application"

  def index
    @radios = Radio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @radios }
    end
  end

  # GET /radios/1
  # GET /radios/1.xml
  def show
    @radio = Radio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @radio }
    end
  end

  # GET /radios/new
  # GET /radios/new.xml
  def new
    @radio = Radio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @radio }
    end
  end

  # GET /radios/1/edit
  def edit
    @radio = Radio.find(params[:id])
  end

  # POST /radios
  # POST /radios.xml
  def create
    @radio = Radio.new(params[:radio])

    respond_to do |format|
      if @radio.save
        flash[:notice] = 'Radio was successfully created.'
        format.html { redirect_to(@radio) }
        format.xml  { render :xml => @radio, :status => :created, :location => @radio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @radio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /radios/1
  # PUT /radios/1.xml
  def update
    @radio = Radio.find(params[:id])

    respond_to do |format|
      if @radio.update_attributes(params[:radio])
        flash[:notice] = 'Radio was successfully updated.'
        format.html { redirect_to(@radio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @radio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /radios/1
  # DELETE /radios/1.xml
  def destroy
    @radio = Radio.find(params[:id])
    @radio.destroy

    respond_to do |format|
      format.html { redirect_to(radios_url) }
      format.xml  { head :ok }
    end
  end
  
end
