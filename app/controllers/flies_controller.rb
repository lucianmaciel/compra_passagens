class FliesController < ApplicationController
  before_filter :autenticacao, :except => [:index, :show]
  # GET /flies
  # GET /flies.json
  def index

    if params[:pilot_id]
      @flies = Pilot.find(params[:pilot_id]).flies
    elsif params[:airplane_id]
      @flies = Airplane.find(params[:airplane_id]).flies
    else
      @flies = Fly.all
    end



    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @flies }
    end
  end

  # GET /flies/1
  # GET /flies/1.json
  def show
    @fly = Fly.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @fly }
    end
  end

  # GET /flies/new
  # GET /flies/new.json
  def new
    @fly = Fly.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @fly }
    end
  end

  # GET /flies/1/edit
  def edit
    @fly = Fly.find(params[:id])
  end

  # POST /flies
  # POST /flies.json
  def create
    @fly = Fly.new(params[:fly])

    respond_to do |format|
      if @fly.save
        format.html { redirect_to @fly, :notice => 'Fly was successfully created.' }
        format.json { render :json => @fly, :status => :created, :location => @fly }
      else
        format.html { render :action => "new" }
        format.json { render :json => @fly.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /flies/1
  # PUT /flies/1.json
  def update
    @fly = Fly.find(params[:id])

    respond_to do |format|
      if @fly.update_attributes(params[:fly])
        format.html { redirect_to @fly, :notice => 'Fly was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @fly.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /flies/1
  # DELETE /flies/1.json
  def destroy
    @fly = Fly.find(params[:id])
    @fly.destroy

    respond_to do |format|
      format.html { redirect_to flies_url }
      format.json { head :no_content }
    end
  end
end
