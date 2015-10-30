class TimeclocksController < ApplicationController
  before_action :set_timeclock, only: [:show, :edit, :update, :destroy]
  before_action :require_logged_in

  # GET /timeclocks
  # GET /timeclocks.json
  def index
    @timeclocks = current_user.timeclocks.all
  end

  # GET /timeclocks/1
  # GET /timeclocks/1.json
  def show
  end

  # GET /timeclocks/new
  def new
    @timeclock = current_user.timeclocks.new
  end

  # GET /timeclocks/1/edit
  def edit
  end

  # POST /timeclocks
  # POST /timeclocks.json
  def create
    @timeclock = current_user.timeclocks.new(timeclock_params)

    respond_to do |format|
      if @timeclock.save
        format.html { redirect_to @timeclock, notice: 'Timeclock was successfully created.' }
        format.json { render :show, status: :created, location: @timeclock }
      else
        format.html { render :new }
        format.json { render json: @timeclock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timeclocks/1
  # PATCH/PUT /timeclocks/1.json
  def update
    respond_to do |format|
      if @timeclock.update(timeclock_params)
        format.html { redirect_to @timeclock, notice: 'Timeclock was successfully updated.' }
        format.json { render :show, status: :ok, location: @timeclock }
      else
        format.html { render :edit }
        format.json { render json: @timeclock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timeclocks/1
  # DELETE /timeclocks/1.json
  def destroy
    @timeclock.destroy
    respond_to do |format|
      format.html { redirect_to timeclocks_url, notice: 'Timeclock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeclock
      @timeclock = current_user.timeclock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timeclock_params
      params.require(:timeclock).permit(:date, :time_in, :time_out_lunch, :time_in_lunch, :time_out, :user_id)
    end
end
