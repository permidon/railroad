class Admin::TicketsController < Admin::BaseController
  before_action :set_ticket, only: [:show, :destroy, :edit, :update]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def edit
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to [:admin, @ticket], notice: t('.success')
    else
      render :edit
    end
  end

  def destroy
    @ticket.destroy
    redirect_to admin_tickets_path, notice: t('.success')
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:fullname, :passport)
  end

end