class Admin::ContactsController < Admin::BaseController
	respond_to :html
	def index
      @contacts = Contact.all
      respond_with(@contacts)
	end
end
