class MainController < ApplicationController

  def index
  	@student = Record.new
  end
  def create
  	@student = Record.new(stud_params)
  	if @student.save
  		redirect_to root_path
  	end
  end

  def show
  	@stud = Record.all
  	respond_to do |format|
  		format.html
  		format.pdf do
  			pdf = DownloadPdf.new(@stud)
  			send_data pdf.render
  		end
  	end
  end

  def search
  	if params[:search] != ""
  		@stud = Record.where(['name LIKE ? or email LIKE ? or phone LIKE ? or gender LIKE ? or link LIKE ? ',
  		 					"%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%"])
  	else
  		flash[:error] = "Search is Empty"
  		@stud = Record.all
  		redirect_to root_path
  	end
  end
private
	def stud_params
		params.require(:record).permit(:name , :phone , :email , :gender , :course_id , :link , :image)
		
	end
end
