class PassesController < ApplicationController
  before_filter :autenticacao
  
  # GET /passes
  # GET /passes.json
  def index
    
    if params[:fly_id]
      @passes = Fly.find(params[:fly_id]).passes
    elsif params[:client_id]
      @passes = Client.find(params[:client_id]).passes
    else
      @passes = Pass.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @passes }
    end
  end

  # GET /passes/1
  # GET /passes/1.json
  def show
    @pass = Pass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pass }
    end
  end

  # GET /passes/new
  # GET /passes/new.json
  def new
    @pass = Pass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pass }
    end
  end

  # GET /passes/1/edit
  def edit
    @pass = Pass.find(params[:id])
  end

  # POST /passes
  # POST /passes.json
  def create
    @pass = Pass.new(params[:pass])

    respond_to do |format|
      if @pass.save
        format.html { redirect_to @pass, :notice => 'Pass was successfully created.' }
        format.json { render :json => @pass, :status => :created, :location => @pass }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /passes/1
  # PUT /passes/1.json
  def update
    @pass = Pass.find(params[:id])

    respond_to do |format|
      if @pass.update_attributes(params[:pass])
        format.html { redirect_to @pass, :notice => 'Pass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /passes/1
  # DELETE /passes/1.json
  def destroy
    @pass = Pass.find(params[:id])
    @pass.destroy

    respond_to do |format|
      format.html { redirect_to passes_url }
      format.json { head :no_content }
    end
  end
end
