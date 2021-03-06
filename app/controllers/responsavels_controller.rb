class ResponsavelsController < ApplicationController
  before_action :set_responsavel, only: [:show, :edit, :update, :destroy]

  # GET /responsavels
  # GET /responsavels.json
  def index
    responsavels = Responsavel.all

    respond_to do |format|
      msg = {
        body: {
          responsavels: responsavels
        },
        message: 'Responsável excluído com sucesso!'
      }
      format.json  { render :json => msg } # don't do msg.to_json
    end
  end

  # GET /responsavels/1
  # GET /responsavels/1.json
  def show
  end

  # GET /responsavels/new
  def new
    @responsavel = Responsavel.new
  end

  # GET /responsavels/1/edit
  def edit
  end

  # POST /responsavels
  # POST /responsavels.json
  def create
    @responsavel = Responsavel.new(responsavel_params)

    respond_to do |format|
      if @responsavel.save
        format.html { redirect_to @responsavel, notice: 'Responsavel was successfully created.' }
        format.json { render :show, status: :created, location: @responsavel }
      else
        format.html { render :new }
        format.json { render json: @responsavel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responsavels/1
  # PATCH/PUT /responsavels/1.json
  def update
    respond_to do |format|
      if @responsavel.update(responsavel_params)
        format.html { redirect_to @responsavel, notice: 'Responsavel was successfully updated.' }
        format.json { render :show, status: :ok, location: @responsavel }
      else
        format.html { render :edit }
        format.json { render json: @responsavel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsavels/1
  # DELETE /responsavels/1.json
  def destroy
    @responsavel.destroy

    respond_to do |format|
      msg = {
        body: {
          url: '/responsavels',
        },
        message: 'Responsável excluído com sucesso!'
      }
      format.json  { render :json => msg } # don't do msg.to_json
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsavel
      @responsavel = Responsavel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def responsavel_params
      params.require(:responsavel).permit(:nome, :cargo, :email, :cliente_id)
    end
end
