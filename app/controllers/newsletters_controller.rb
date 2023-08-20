# frozen_string_literal: true

class NewslettersController < ApplicationController
  def create
    newsletter = Newsletter.new(newsletter_params)
 
    if newsletter.save
      flash[:notice] = 'Cadastro efetuado com sucesso.'
      redirect_to root_path
    else
      flash[:notice] = 'Falha ao se cadastrar, tente novamente.'
      redirect_to root_path
    end
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:email)
  end
end