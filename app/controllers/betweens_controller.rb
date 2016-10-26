class BetweensController < ApplicationController
  before_action :set_between, only: [:show, :edit, :update, :destroy]

  # GET /betweens
  # GET /betweens.json
  def index
    @betweens = Between.all
  end

  # GET /betweens/1
  # GET /betweens/1.json
  def show
  end

  # GET /betweens/new
  def new
    @between = Between.new
  end

  # GET /betweens/1/edit
  def edit
  end

  # POST /betweens
  # POST /betweens.json
  def create
    @between = Between.new(between_params)

    respond_to do |format|
      if @between.save
        format.html { redirect_to @between, notice: 'Between was successfully created.' }
        format.json { render :show, status: :created, location: @between }
      else
        format.html { render :new }
        format.json { render json: @between.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /betweens/1
  # PATCH/PUT /betweens/1.json
  def update
    respond_to do |format|
      if @between.update(between_params)
        format.html { redirect_to @between, notice: 'Between was successfully updated.' }
        format.json { render :show, status: :ok, location: @between }
      else
        format.html { render :edit }
        format.json { render json: @between.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /betweens/1
  # DELETE /betweens/1.json
  def destroy
    @between.destroy
    respond_to do |format|
      format.html { redirect_to betweens_url, notice: 'Between was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_between
      @between = Between.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def between_params
      params.require(:between).permit(:datename, :datetag)
    end
end
