class Notification < MailForm::Base
  attribute :first_name
  attribute :last_name
  attribute :email
  attribute :message

  def headers 
    {
      :subject => "New Profile Created",
      :to      => "jaschoen@gmail.com",
      :from    => %("#{first_name} #{last_name}" <#{email}>),
      :message => "#{message}"
    }
  end


  
end