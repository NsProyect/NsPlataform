class MasInformacionsController < ApplicationController
  before_action :set_mas_informacion, only: [:show, :edit, :update, :destroy]

  # GET /mas_informacions
  # GET /mas_informacions.json
  def index
    @mas_informacions = MasInformacion.all
  end

  # GET /mas_informacions/1
  # GET /mas_informacions/1.json
  def show
  end

  # GET /mas_informacions/new
  def new
    @mas_informacion = MasInformacion.new
  end

  # GET /mas_informacions/1/edit
  def edit
  end

  # POST /mas_informacions
  # POST /mas_informacions.json
  def create
    @mas_informacion = MasInformacion.new(mas_informacion_params)

    respond_to do |format|
      if @mas_informacion.save
        format.html { redirect_to @mas_informacion, notice: 'Mas informacion was successfully created.' }
        format.json { render :show, status: :created, location: @mas_informacion }
      else
        format.html { render :new }
        format.json { render json: @mas_informacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mas_informacions/1
  # PATCH/PUT /mas_informacions/1.json
  def update
    respond_to do |format|
      if @mas_informacion.update(mas_informacion_params)
        format.html { redirect_to @mas_informacion, notice: 'Mas informacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @mas_informacion }
      else
        format.html { render :edit }
        format.json { render json: @mas_informacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mas_informacions/1
  # DELETE /mas_informacions/1.json
  def destroy
    @mas_informacion.destroy
    respond_to do |format|
      format.html { redirect_to mas_informacions_url, notice: 'Mas informacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mas_informacion
      @mas_informacion = MasInformacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mas_informacion_params
      params[:mas_informacion]
    end
end
