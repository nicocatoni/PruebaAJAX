class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  before_action :set_company, except: [:index, :create]
  before_action :authenticate_user!, only: [:show]
  

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
    @company = Company.new
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    @complaint = Complaint.new
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  def modal_edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(title: params[:company][:title])
    @company.save
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    @company.update(title: params[:company][:title])
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:title)
    end
end
