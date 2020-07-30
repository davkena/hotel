class ItunesController < ApplicationController
  before_action :set_itune, only: [:show, :update, :destroy]

  # GET /itunes
  def index
    @itunes = Itune.all

    #filter results by kinds
    @itunes = @itunes.kind(params[:kind]) if params[:kind]

    #Order results
    @itunes = @itunes.order(params[:order].gsub(':', ' ')) if params[:order]



    render json: @itunes, status: :ok
  end

  # GET /itunes/id
  def show
    render json: @itune
  end

  # POST /itunes
  def create
    @itune = Itune.new(itune_params)

    if @itune.save
      render json: @itune, status: :created, location: @itune
    else
      render json: @itune.errors, status: :unprocessable_entity
    end
  end

  # PUT /itunes/id
  def update
    if @itune.update(itune_params)
      render json: @itune
    else
      render json: @itune.errors, status: :unprocessable_entity
    end
  end

  # DELETE /itunes/id
  def destroy
    @itune.destroy
  end

  private

    def set_itune
      @itune = Itune.find(params[:id])
    end


    def itune_params
      params.require(:itune).permit( :kind, :artistId, :trackId, :artistName, :trackName)
    end
end
