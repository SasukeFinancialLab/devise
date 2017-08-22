if defined?(ActionMailer)
  class Devise::Mailer < Devise.parent_mailer.constantize
    include Devise::Mailers::Helpers

    def confirmation_instructions(record, token, opts={})
      @token = token
      devise_mail(record, :confirmation_instructions, opts)
    end

    def reset_password_instructions(record, token, opts={})
      @token = token
      devise_mail(record, :reset_password_instructions, opts)
    end

    def unlock_instructions(record, token, opts={})
      @token = token
      devise_mail(record, :unlock_instructions, opts)
    end

    def password_change(record, opts={})
      devise_mail(record, :password_change, opts)
    end

    def email_changed(record, opts={})
      devise_mail(record, :email_changed, opts)
    end

    def thank_after_confirmed(record, opts={})
      devise_mail(record, :thank_after_confirmed, opts)
    end
  end
end
