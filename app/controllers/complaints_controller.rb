class ComplaintsController < ApplicationController
    before_action :authenticate_user!, only: [:show, :create]
    def create
        @complaint = Complaint.new(user: current_user, comment: params[:complaint][:comment], company_id: params[:company_id])
        @complaint.save
    end
    
end
