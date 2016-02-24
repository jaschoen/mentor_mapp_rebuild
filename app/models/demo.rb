class Demo < MailForm::Base

  attribute :email,       :validate => true
  attribute :industry,    :validate => true
  attribute :location,    :validate => true
  def headers 
    {
      :subject => "Demo Request mentor mapp rebuild",
      :to      => "mentormapp@gmail.com",
      :from    => %("#{location} #{industry}" <#{email}>),
    }
  end

end



