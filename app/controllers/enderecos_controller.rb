class EnderecosController < ApplicationController
  before_action :set_endereco, only: [:show, :edit, :update, :destroy]

  # GET /enderecos
  # GET /enderecos.json
  def index
    enderecos = Endereco.all

    respond_to do |format|
      msg = {
        body: {
          enderecos: enderecos
        },
        message: 'Endereço excluído com sucesso!'
      }
      format.json  { render :json => msg } # don't do msg.to_json
    end
  end

  # GET /enderecos/1
  # GET /enderecos/1.json
  def show
  end

  # GET /enderecos/new
  def new
    @endereco = Endereco.new
  end

  # GET /enderecos/1/edit
  def edit
  end

  # POST /enderecos
  # POST /enderecos.json
  def create
    @endereco = Endereco.new(endereco_params)

    respond_to do |format|
      if @endereco.save
        format.html { redirect_to @endereco, notice: 'Endereco was successfully created.' }
        format.json { render :show, status: :created, location: @endereco }
      else
        format.html { render :new }
        format.json { render json: @endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enderecos/1
  # PATCH/PUT /enderecos/1.json
  def update
    respond_to do |format|
      if @endereco.update(endereco_params)
        format.html { redirect_to @endereco, notice: 'Endereco was successfully updated.' }
        format.json { render :show, status: :ok, location: @endereco }
      else
        format.html { render :edit }
        format.json { render json: @endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enderecos/1
  # DELETE /enderecos/1.json
  def destroy
    @endereco.destroy

    respond_to do |format|
      msg = {
        body: {
          url: '/enderecos',
        },
        message: 'Endereço excluído com sucesso!'
      }
      format.json  { render :json => msg } # don't do msg.to_json
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco
      @endereco = Endereco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def endereco_params
      params.require(:endereco).permit(:logradouro, :numero, :complemento, :bairro, :cidade, :estado, :cep)
    end
end
