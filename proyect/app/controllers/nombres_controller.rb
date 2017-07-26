class NombresController < ApplicationController
  before_action :set_nombre, only: [:show, :edit, :update, :destroy]

  # GET /nombres
  # GET /nombres.json
  def index
    @nombres = Nombre.all
  end

  # GET /nombres/1
  # GET /nombres/1.json
  def show
  end

  # GET /nombres/new
  def new
    @nombre = Nombre.new
  end

  # GET /nombres/1/edit
  def edit
  end

  # POST /nombres
  # POST /nombres.json
  def create
    @nombre = Nombre.new(nombre_params)

    respond_to do |format|
      if @nombre.save
        format.html { redirect_to @nombre, notice: 'Nombre was successfully created.' }
        format.json { render :show, status: :created, location: @nombre }
      else
        format.html { render :new }
        format.json { render json: @nombre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombres/1
  # PATCH/PUT /nombres/1.json
  def update
    respond_to do |format|
      if @nombre.update(nombre_params)
        format.html { redirect_to @nombre, notice: 'Nombre was successfully updated.' }
        format.json { render :show, status: :ok, location: @nombre }
      else
        format.html { render :edit }
        format.json { render json: @nombre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombres/1
  # DELETE /nombres/1.json
  def destroy
    @nombre.destroy
    respond_to do |format|
      format.html { redirect_to nombres_url, notice: 'Nombre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombre
      @nombre = Nombre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nombre_params
      params.require(:nombre).permit(:apellido, :telefono)
    end
end
