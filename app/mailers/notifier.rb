class Notifier < ActionMailer::Base
  default from: "New Contact infomation submitted by Xiao Xie <xxie@syr.edu>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.contact_submitted.subject
  #
  def contact_submitted (contact)
    @contact = contact

    mail :to => "xxie@syr.edu"
  end
end
