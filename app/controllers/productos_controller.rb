class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  # SKIP authentication
  skip_before_action :authenticate_user!, :only => [:index, :show]

  # GET /productos
  # GET /productos.json
  def index
    @productos = Producto.limit(9)
  end

  # GET /productos/1
  # GET /productos/1.json
  def show
    @producto_adjuntos = @producto.producto_adjuntos.all
  end

  # GET /productos/new
  def new
    @producto = Producto.new
    @producto_adjunto = @producto.producto_adjuntos.build
  end

  # GET /productos/1/edit
  def edit
  end

  # POST /productos
  # POST /productos.json
  def create
    @producto = Producto.new(producto_params)

    respond_to do |format|
      if @producto.save

        #Accept multiple images for Producto
        params[:producto_adjuntos]['avatar'].each do |a|
          @producto_adjunto = @producto.producto_adjuntos.create!(:avatar => a)
        end

        format.html { redirect_to @producto, notice: 'Producto was successfully created.' }
        format.json { render :show, status: :created, location: @producto }
      else
        format.html { render :new }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
    respond_to do |format|
      if @producto.update(producto_params)
        format.html { redirect_to @producto, notice: 'Producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to productos_url, notice: 'Producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:nombre, :descripcion, :caracteristicas, :especificaciones, :avatar, :es_servicio, :es_propio, :nombre_empresa, :sitio_empresa, :url_prod_empresa, producto_adjuntos_attributes: [:id, :producto_id, :avatar])
    end
end
