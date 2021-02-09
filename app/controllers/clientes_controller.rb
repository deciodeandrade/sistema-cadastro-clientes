class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    clientes = Cliente.all

    clientes = clientes.map do |cliente| {

      id: cliente.id,
      cnpj: cliente.cnpj,
      endereco_id: cliente.endereco_id,
      endereco: cliente.endereco.bairro,
      inscricao_estadual: cliente.inscricao_estadual,
      inscricao_municipal: cliente.inscricao_municipal,
      nome_fantasia: cliente.nome_fantasia,
      razao_social: cliente.razao_social,

    }
    end


    respond_to do |format|
      msg = {
        body: {
          clientes: clientes
        }
      }
      format.json  { render :json => msg } # don't do msg.to_json
    end
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Cliente was successfully created.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy

    respond_to do |format|
      msg = {
        body: {
          url: '/clientes',
        },
        message: 'Cliente excluído com sucesso!'
      }
      format.json  { render :json => msg } # don't do msg.to_json
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cliente_params
      params.require(:cliente).permit(:cnpj, :razao_social, :nome_fantasia, :inscricao_estadual, :inscricao_municipal, :endereco_id)
    end
end
