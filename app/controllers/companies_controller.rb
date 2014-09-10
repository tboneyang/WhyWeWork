class CompaniesController < ApplicationController
	#create new company
	def new
		@company = Company.new
	end

	#create a company
	def create
		@company = Company.new(company_params)

		if @company.save
			redirect_to companies_path
		else
			render 'new'
		end
	end


	#delete
	def destroy
		@company = Company.find(params[:id])
		@company.destroy

		redirect_to companies_path
	end

	#list companys
	def  index
		@companies = Company.search(params[:search])
	end

	#edit
	def edit
		@company = Company.find(params[:id])
	end

	#update
	def update
		@company = Company.find(params[:id])

		if @company.update(company_params)
			redirect_to companies_path
		else
			render 'edit'
		end
	end

	def show
		@company = Company.find(params[:id])
	end

	private
		def company_params
			params.require(:company).permit(:name)
		end

end
