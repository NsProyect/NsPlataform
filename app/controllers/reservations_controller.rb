class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = @apartment.reservations.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
    @reservation.apartment_id = @apartment.id
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.apartment_id = @apartment.id
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to apartment_reservations_path(@apartment), notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to apartment_reservations_path(@apartment), notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to apartment_reservations_url(@apartment), notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   def allreservations
    @reservation = Reservation.search(params[:search], params[:page])
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @apartment = Apartment.find(params[:apartment_id])
      @reservation = Reservation.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:aptocode, :name, :doctype_id, :doc, :mail, :reservaciondatein, :reservationdateout, :apartment_id)
    end
end
