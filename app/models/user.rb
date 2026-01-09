class User < ApplicationRecord

    has_secure_password

    validates :name, presence: true


    validates :email, presence: true, format: {with: URI::MailTo::Email_REGEXP}


    validates password, presence: true, length: {minimum:6}


    before_save :downcase_email

    private 

    def downcase_email
        self.email = email.downcase

    end

    



end
