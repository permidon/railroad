class TicketsMailer < ApplicationMailer
  def buy_ticket(user, ticket)
    @user = user
    @ticket = ticket

    mail(to: user.email, subject: t('menu.buy_ticket_mail', action: "#{ticket.number}"))
  end

  def cancel_ticket(user, ticket)
    @user = user
    @ticket = ticket

    mail(to: user.email, subject: t('menu.cancel_ticket_mail', action: "#{ticket.number}"))
  end
end
