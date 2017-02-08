class ProductoAdjuntosController < ApplicationController
  before_action :set_producto_adjunto, only: [:show, :edit, :update, :destroy]

  # GET /producto_adjuntos
  # GET /producto_adjuntos.json
  def index
    @producto_adjuntos = ProductoAdjunto.all
  end

  # GET /producto_adjuntos/1
  # GET /producto_adjuntos/1.json
  def show
  end

  # GET /producto_adjuntos/new
  def new
    @producto_adjunto = ProductoAdjunto.new
  end

  # GET /producto_adjuntos/1/edit
  def edit
  end

  # POST /producto_adjuntos
  # POST /producto_adjuntos.json
  def create
    @producto_adjunto = ProductoAdjunto.new(producto_adjunto_params)

    respond_to do |format|
      if @producto_adjunto.save
        format.html { redirect_to @producto_adjunto, notice: 'Producto adjunto was successfully created.' }
        format.json { render :show, status: :created, location: @producto_adjunto }
      else
        format.html { render :new }
        format.json { render json: @producto_adjunto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_adjuntos/1
  # PATCH/PUT /producto_adjuntos/1.json
  def update
    respond_to do |format|
      if @producto_adjunto.update(producto_adjunto_params)
        format.html { redirect_to @producto_adjunto.producto, notice: 'Producto adjunto was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_adjunto }
      else
        format.html { render :edit }
        format.json { render json: @producto_adjunto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_adjuntos/1
  # DELETE /producto_adjuntos/1.json
  def destroy
    @producto_adjunto.destroy
    respond_to do |format|
      format.html { redirect_to producto_adjuntos_url, notice: 'Producto adjunto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_adjunto
      @producto_adjunto = ProductoAdjunto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_adjunto_params
      params.require(:producto_adjunto).permit(:producto_id, :avatar)
    end
end
