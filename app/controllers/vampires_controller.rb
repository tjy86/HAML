class VampiresController < ApplicationController

  def hamltime
    @vampires = Vampire.all
  end

  # GET /vampires
  # GET /vampires.json
  def index
    @vampires = Vampire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vampires }
    end
  end

  # GET /vampires/1
  # GET /vampires/1.json
  def show
    @vampire = Vampire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vampire }
    end
  end

  # GET /vampires/new
  # GET /vampires/new.json
  def new
    @vampire = Vampire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vampire }
    end
  end

  # GET /vampires/1/edit
  def edit
    @vampire = Vampire.find(params[:id])
  end

  # POST /vampires
  # POST /vampires.json
  def create
    @vampire = Vampire.new(params[:vampire])

    respond_to do |format|
      if @vampire.save
        format.html { redirect_to @vampire, notice: 'Vampire was successfully created.' }
        format.json { render json: @vampire, status: :created, location: @vampire }
      else
        format.html { render action: "new" }
        format.json { render json: @vampire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vampires/1
  # PUT /vampires/1.json
  def update
    @vampire = Vampire.find(params[:id])

    respond_to do |format|
      if @vampire.update_attributes(params[:vampire])
        format.html { redirect_to @vampire, notice: 'Vampire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vampire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vampires/1
  # DELETE /vampires/1.json
  def destroy
    @vampire = Vampire.find(params[:id])
    @vampire.destroy

    respond_to do |format|
      format.html { redirect_to vampires_url }
      format.json { head :no_content }
    end
  end
end
