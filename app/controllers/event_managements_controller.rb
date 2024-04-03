class EventManagementsController < ApplicationController
  before_action :set_event_management, only: %i[ show edit update destroy ]

  # GET /event_managements or /event_managements.json
  def index
    @event_managements = EventManagement.all
  end

  # GET /event_managements/1 or /event_managements/1.json
  def show
  end

  # GET /event_managements/new
  def new
    @event_management = EventManagement.new
  end

  # GET /event_managements/1/edit
  def edit
  end

  # POST /event_managements or /event_managements.json
  def create
    @event_management = EventManagement.new(event_management_params)

    respond_to do |format|
      if @event_management.save
        format.html { redirect_to event_management_url(@event_management), notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event_management }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_managements/1 or /event_managements/1.json
  def update
    respond_to do |format|
      if @event_management.update(event_management_params)
        format.html { redirect_to event_management_url(@event_management), notice: "Event management was successfully updated." }
        format.json { render :show, status: :ok, location: @event_management }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_managements/1 or /event_managements/1.json
  def destroy
    @event_management.destroy!

    respond_to do |format|
      format.html { redirect_to event_managements_url, notice: "Event management was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_management
      @event_management = EventManagement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_management_params
      params.require(:event_management).permit(:title, :description, :start_time, :end_time)
    end
end
