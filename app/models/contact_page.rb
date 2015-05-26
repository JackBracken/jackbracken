class ContactPage < MailForm::Base
  attribute :from, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :title, validate: true
  attribute :body

  email = 'contact@jackbracken.me'

  def headers 
    {
      :subject => "#{title}",
      :to => email,
      :from => %("#{from}" <#{from}>)
    }
  end
end
