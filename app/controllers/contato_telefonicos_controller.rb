class ContatoTelefonicosController < ApplicationController
  before_action :set_contato_telefonico, only: [:show, :edit, :update, :destroy]

  # GET /contato_telefonicos
  # GET /contato_telefonicos.json
  def index
    contato_telefonicos = ContatoTelefonico.all

    respond_to do |format|
      msg = {
        body: {
          contato_telefonicos: contato_telefonicos
        }
      }
      format.json  { render :json => msg } # don't do msg.to_json
    end
  end

  # GET /contato_telefonicos/1
  # GET /contato_telefonicos/1.json
  def show
  end

  # GET /contato_telefonicos/new
  def new
    @contato_telefonico = ContatoTelefonico.new
  end

  # GET /contato_telefonicos/1/edit
  def edit
  end

  # POST /contato_telefonicos
  # POST /contato_telefonicos.json
  def create
    @contato_telefonico = ContatoTelefonico.new(contato_telefonico_params)

    respond_to do |format|
      if @contato_telefonico.save
        format.html { redirect_to @contato_telefonico, notice: 'Contato telefonico was successfully created.' }
        format.json { render :show, status: :created, location: @contato_telefonico }
      else
        format.html { render :new }
        format.json { render json: @contato_telefonico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contato_telefonicos/1
  # PATCH/PUT /contato_telefonicos/1.json
  def update
    respond_to do |format|
      if @contato_telefonico.update(contato_telefonico_params)
        format.html { redirect_to @contato_telefonico, notice: 'Contato telefonico was successfully updated.' }
        format.json { render :show, status: :ok, location: @contato_telefonico }
      else
        format.html { render :edit }
        format.json { render json: @contato_telefonico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contato_telefonicos/1
  # DELETE /contato_telefonicos/1.json
  def destroy
    @contato_telefonico.destroy

    respond_to do |format|
      msg = {
        body: {
          url: '/contato_telefonicos',
        },
        message: 'Contato excluído com sucesso!'
      }
      format.json  { render :json => msg } # don't do msg.to_json
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contato_telefonico
      @contato_telefonico = ContatoTelefonico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contato_telefonico_params
      params.require(:contato_telefonico).permit(:telefone_fixo, :ramal, :telefone_celular, :responsavel_id)
    end
end
