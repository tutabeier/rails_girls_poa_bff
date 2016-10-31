class AgendasController < ApplicationController
  before_action :set_agenda, only: [:show, :update, :destroy]

  # GET /agendas
  def index
    @agendas = Agenda.all

    render json: @agendas
  end

  # GET /agendas/1
  def show
    render json: @agenda
  end

  # POST /agendas
  def create
    @agenda = Agenda.new(agenda_params)

    if @agenda.save
      render json: @agenda, status: :created, location: @agenda
    else
      render json: @agenda.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /agendas/1
  def update
    if @agenda.update(agenda_params)
      render json: @agenda
    else
      render json: @agenda.errors, status: :unprocessable_entity
    end
  end

  # DELETE /agendas/1
  def destroy
    @agenda.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda
      @agenda = Agenda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agenda_params
      params.require(:agenda).permit(:date, :title, :location_id, :description)
    end
end
