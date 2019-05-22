class TicketsController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      flash[:notice] = "#{@ticket.name} successfully sent request!"
      redirect_to @ticket
    else
      render 'new'
    end
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def update
    flash[:notice] = "#{@ticket.name} had successfully updated request!"
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render 'edit'
    end
  end

  def destroy
    @ticket.destroy
  end

  private

  def ticket_params
    params.require(:ticket).permit(:name, :email, :subject, :body, :department_id)
  end

  def find_user
    @ticket = Ticket.find(params[:id])
  end

end
