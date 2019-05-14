class TicketsController < ApplicationController

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
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render 'edit'
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
  end

  private

  def ticket_params
    params.require(:ticket).permit(:name, :email, :department, :subject, :body)
  end

end
