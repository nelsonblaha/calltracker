class CallsController < ApplicationController
  before_action :set_call, only: [:show, :edit, :update, :destroy]
  before_action :set_calls, only: :new

  # GET /calls
  # GET /calls.json
  def index
    @calls = Call.all
  end

  # GET /calls/1
  # GET /calls/1.json
  def show
  end

  # GET /calls/new
  def new
    @call = Call.new
  end

  # GET /calls/1/edit
  def edit
  end

  # POST /calls
  # POST /calls.json
  def create
    @call = Call.new(call_params)
    @call.user = User.last
    respond_to do |format|
      if @call.save
        format.html { redirect_to root_url, notice: 'Call was successfully created.' }
        format.json { render action: 'new', status: :created, location: @call }
      else
        format.html { render action: 'new' }
        format.json { render json: @call.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calls/1
  # PATCH/PUT /calls/1.json
  def update
    respond_to do |format|
      if @call.update(call_params)
        format.html { redirect_to @call, notice: 'Call was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calls/1
  # DELETE /calls/1.json
  def destroy
    @call.destroy
    respond_to do |format|
      format.html { redirect_to calls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call
      @call = Call.find(params[:id])
    end
    def set_calls
      @calls = Call.all
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def call_params
      params.require(:call).permit(:department, :user)
    end
end
