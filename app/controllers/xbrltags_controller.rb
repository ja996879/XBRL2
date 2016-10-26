class XbrltagsController < ApplicationController
  before_action :set_xbrltag, only: [:show, :edit, :update, :destroy]

  # GET /xbrltags
  # GET /xbrltags.json
  def index
    @xbrltags = Xbrltag.all
  end

  # GET /xbrltags/1
  # GET /xbrltags/1.json
  def show
  end

  # GET /xbrltags/new
  def new
    @xbrltag = Xbrltag.new
  end

  # GET /xbrltags/1/edit
  def edit
  end

  # POST /xbrltags
  # POST /xbrltags.json
  def create
    @xbrltag = Xbrltag.new(xbrltag_params)

    respond_to do |format|
      if @xbrltag.save
        format.html { redirect_to @xbrltag, notice: 'Xbrltag was successfully created.' }
        format.json { render :show, status: :created, location: @xbrltag }
      else
        format.html { render :new }
        format.json { render json: @xbrltag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xbrltags/1
  # PATCH/PUT /xbrltags/1.json
  def update
    respond_to do |format|
      if @xbrltag.update(xbrltag_params)
        format.html { redirect_to @xbrltag, notice: 'Xbrltag was successfully updated.' }
        format.json { render :show, status: :ok, location: @xbrltag }
      else
        format.html { render :edit }
        format.json { render json: @xbrltag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xbrltags/1
  # DELETE /xbrltags/1.json
  def destroy
    @xbrltag.destroy
    respond_to do |format|
      format.html { redirect_to xbrltags_url, notice: 'Xbrltag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xbrltag
      @xbrltag = Xbrltag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xbrltag_params
      params.require(:xbrltag).permit(:tagname, :tagmean)
    end
end
