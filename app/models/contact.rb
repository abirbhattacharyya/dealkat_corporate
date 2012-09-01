class Contact < ActiveRecord::Base
		validates_presence_of :email, :message => "^Hey, please enter email"
		validates_presence_of :company, :message => "^Hey, please enter company name"
		
    validates_format_of       :email, :if => :email_not_blank?, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "^Hey, please enter valid email."
    validates_uniqueness_of   :email, :case_sensitive => false, :if => :email_not_blank?, :message => "^Hey, email already exists."
		
    protected
    
    def email_not_blank?
        !(email.nil?) && !(email.blank?)
    end
end
