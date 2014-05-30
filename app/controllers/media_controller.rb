class MediaController < ApplicationController
  before_action :set_medium, only: [:show, :edit, :update, :destroy]
  before_action :load_kinds, only: [:new, :create, :edit, :update]

  # GET /media
  # GET /media.json
  def index
    @medium = Medium.first
    @media = Medium.all
  end

  # GET /media/1
  # GET /media/1.json
  def show
    @media = Medium.all
    render :index
  end

  # GET /media/new
  def new
    @medium = Medium.new
  end

  # GET /media/1/edit
  def edit
  end

  # POST /media
  # POST /media.json
  def create
    @medium = Medium.new(medium_params)

    respond_to do |format|
      if @medium.save
        format.html { redirect_to media_url, notice: 'Medium was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /media/1
  # PATCH/PUT /media/1.json
  def update
    respond_to do |format|
      if @medium.update(medium_params)
        format.html { redirect_to media_url, notice: 'Medium was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /media/1
  # DELETE /media/1.json
  def destroy
    @medium.destroy
    respond_to do |format|
      format.html { redirect_to media_url, notice: 'Medium was successfully destroyed.' }
    end
  end

  def delete_all
    Medium.delete_all
    respond_to do |format|
      format.html { redirect_to media_url, notice: 'All media was successfully destroyed.' }
    end
  end

  private
    def load_kinds
      @kinds = ['Movie', 'TV show', 'Video game', 'Music', 'Book']
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_medium
      @medium = Medium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medium_params
      params.require(:medium).permit(:name, :meta, :kind, :image)
    end
end
