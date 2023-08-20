# frozen_string_literal: true

module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_user!

    def records_per_page
      params[:per_page] || 12
    end
  end
end
