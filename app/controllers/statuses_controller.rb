class StatusesController < ApplicationController

  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to status_path(@status), notice: "Status created successfully"
    else
      render :new
    end
  end

  def edit
    set_status
  end

  def update
    set_status
    if @status.update(status_params)
      redirect_to status_path(@status), notice: "Status updated successfully"
    else
      render :edit
    end
  end

  def show
    set_status
  end

  def destroy
    set_status
    @status.destroy
    redirect_to statuses_path, notice: "Status deleted successfully"
  end

  private

  def status_params
    params.require(:status).permit(:name, :status, :likes)
  end

  def set_status
    @status = Status.find(params[:id])
  end

end
