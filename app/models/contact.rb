class Contact < MailForm::Base
  attribute :first_name,  :validate => true
  attribute :last_name,   :validate => true
  attribute :email,       :validate => true
  attribute :message,     :validate => false     
  attribute :nickname,    :captcha  => true

  def headers 
    {
      :subject => @profile ? "New Profile Created" : "Contact Form",
      :to      => "jaschoen@gmail.com",
      :from    => %("#{first_name} #{last_name}" <#{email}>),
      :message => "#{message}"
    }
  end


  
end