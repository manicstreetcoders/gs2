class NarrationsController < ApplicationController
  # GET /narrations
  # GET /narrations.json
  def index
    @narrations = Narration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @narrations }
    end
  end

  # GET /narrations/1
  # GET /narrations/1.json
  def show
    @narration = Narration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @narration }
    end
  end

  # GET /narrations/new
  # GET /narrations/new.json
  def new
    @narration = Narration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @narration }
    end
  end

  # GET /narrations/1/edit
  def edit
    @narration = Narration.find(params[:id])
  end

  # POST /narrations
  # POST /narrations.json
  def create
    @narration = Narration.new(params[:narration])

    respond_to do |format|
      if @narration.save
        base64 = ActiveSupport::Base64.encode64(open("#{@narration.audio.current_path}") { |io| io.read })
        @narration.update_attributes!(:base64 => base64)

        format.html { redirect_to @narration, notice: 'Narration was successfully created.' }
        format.json { render json: @narration, status: :created, location: @narration }
      else
        format.html { render action: "new" }
        format.json { render json: @narration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /narrations/1
  # PUT /narrations/1.json
  def update
    @narration = Narration.find(params[:id])

    respond_to do |format|
      if @narration.update_attributes(params[:narration])
        base64 = ActiveSupport::Base64.encode64(open("#{@narration.audio.current_path}") { |io| io.read })
        @narration.update_attributes!(:base64 => base64)

        format.html { redirect_to @narration, notice: 'Narration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @narration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /narrations/1
  # DELETE /narrations/1.json
  def destroy
    @narration = Narration.find(params[:id])
    @narration.destroy

    respond_to do |format|
      format.html { redirect_to narrations_url }
      format.json { head :no_content }
    end
  end
end
