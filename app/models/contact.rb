class Contact < ActiveRecord::Base
 validates :name, 
	presence: true, 
	length: { minimum: 3}
 validates :mail, 
	presence: true,
	email_format: {message: "has invalid format"}
 validates :phone, 
	presence: true, 
	length: { is: 9 }, 
	numericality: { only_integer: true }
end
