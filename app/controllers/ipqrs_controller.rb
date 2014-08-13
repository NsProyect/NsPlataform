class IpqrsController < ApplicationController
  before_action :set_ipqr, only: [:show, :edit, :update, :destroy]

  # GET /ipqrs
  # GET /ipqrs.json
  def index
    @ipqrs = Ipqr.all
  end

  # GET /ipqrs/1
  # GET /ipqrs/1.json
  def show
  end

  # GET /ipqrs/new
  def new
    @ipqr = Ipqr.new
  end

  # GET /ipqrs/1/edit
  def edit
  end

  # POST /ipqrs
  # POST /ipqrs.json
  def create
    @ipqr = Ipqr.new(ipqr_params)

    respond_to do |format|
      if @ipqr.save
        format.html { redirect_to @ipqr, notice: 'Ipqr was successfully created.' }
        format.json { render :show, status: :created, location: @ipqr }
      else
        format.html { render :new }
        format.json { render json: @ipqr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipqrs/1
  # PATCH/PUT /ipqrs/1.json
  def update
    respond_to do |format|
      if @ipqr.update(ipqr_params)
        format.html { redirect_to @ipqr, notice: 'Ipqr was successfully updated.' }
        format.json { render :show, status: :ok, location: @ipqr }
      else
        format.html { render :edit }
        format.json { render json: @ipqr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipqrs/1
  # DELETE /ipqrs/1.json
  def destroy
    @ipqr.destroy
    respond_to do |format|
      format.html { redirect_to ipqrs_url, notice: 'Ipqr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipqr
      @ipqr = Ipqr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipqr_params
      params.require(:ipqr).permit(:name, :mail, :comments)
    end
end
