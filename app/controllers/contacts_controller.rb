class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render('contacts/index')
  end

  def new
    @contact = Contact.new
    render('contacts/new')
  end

  def create
    @contact = Contact.new(:name => params[:name],
                           :email => params[:email],
                           :phone => params[:phone])
    if @contact.save
      redirect_to("/contacts/#{@contact.id}")
    else
      render('contacts/new')
    end
  end

  def show
    @contact = Contact.find(params[:id])
    render('contacts/show')
  end

  def edit
    @contact = Contact.find(params[:id])
    render('contacts/edit')
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(:name => params[:name],
                        :email => params[:email],
                          :phone => params[:phone])
      redirect_to("/contacts/#{@contact.id}")
    else
      render('contacts/edit')
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to("/contacrequire "test/unit"

    require "tc_test_case_file"
    require "tc_test_case_file"
    ")
  end
end
