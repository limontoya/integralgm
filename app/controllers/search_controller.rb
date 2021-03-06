class SearchController < ApplicationController

  # SKIP authentication
  skip_before_action :authenticate_user!, :only => [:index, :create, :show, :edit, :update, :destroy]

  def create
  	palabra = "%#{params[:keyword]}%"

  	@productos = Producto.where("nombre LIKE ? OR descripcion LIKE ? OR especificaciones LIKE ? OR caracteristicas LIKE ? OR nombre_empresa LIKE ?", palabra,palabra,palabra,palabra,palabra).order("created_at DESC")
  	
  	respond_to do |format|
  		format.html { redirect_to root_path }
  		format.json { render @productos }
  		format.js
  	end

  end
end
