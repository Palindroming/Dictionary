class User < ApplicationRecord

    has_secure_password

    validates :name, presence: true, length: { maximum: 50 }

    validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with:URI::MailTo::EMAIL_REGEXP}

  validates :password, presence: true, length: {minimum: 6, maximum: 72}, if: :password_required?

    private

    def downcase_email
        self.email = email.downcase
    end

    def password_required?
        new_record? || password.present?
    end

end
