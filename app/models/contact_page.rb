class ContactPage < MailForm::Base
  attribute :from, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :name, validate: true
  attribute :body

  def headers 
    {
      :subject => "Contact page message",
      :to => 'contact@jackbracken.me',
      :from => %("#{name}" <#{from}>)
    }
  end
end
