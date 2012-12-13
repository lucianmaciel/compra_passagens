class PilotsController < ApplicationController
before_filter :autenticacao, :except => [:index, :show]
  # GET /pilots
  # GET /pilots.json
  def index
    @pilots = Pilot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pilots }
    end
  end

  # GET /pilots/1
  # GET /pilots/1.json
  def show
    @pilot = Pilot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pilot }
    end
  end

  # GET /pilots/new
  # GET /pilots/new.json
  def new
    @pilot = Pilot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pilot }
    end
  end

  # GET /pilots/1/edit
  def edit
    @pilot = Pilot.find(params[:id])
  end

  # POST /pilots
  # POST /pilots.json
  def create
    @pilot = Pilot.new(params[:pilot])

    respond_to do |format|
      if @pilot.save
        format.html { redirect_to @pilot, :notice => 'Pilot was successfully created.' }
        format.json { render :json => @pilot, :status => :created, :location => @pilot }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pilot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pilots/1
  # PUT /pilots/1.json
  def update
    @pilot = Pilot.find(params[:id])

    respond_to do |format|
      if @pilot.update_attributes(params[:pilot])
        format.html { redirect_to @pilot, :notice => 'Pilot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pilot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pilots/1
  # DELETE /pilots/1.json
  def destroy
    @pilot = Pilot.find(params[:id])
    @pilot.destroy

    respond_to do |format|
      format.html { redirect_to pilots_url }
      format.json { head :no_content }
    end
  end
end
