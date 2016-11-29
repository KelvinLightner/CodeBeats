class ArticlesController < ApplicationController
	# A controller is simply a class that is defined to inherit from ApplicationController.
	http_basic_authenticate_with name: "kelvin", password: "password", only: :destroy
	# allow only authenticated users to delete articles
	
	def index
		# renders view
		@articles = Article.all
	end

	def new
		# renders view
		@article = Article.new	# passes to error validations on new html page
	end

	def create
		# render plain: params[:article].inspect
		@article = Article.new(article_params) # refer to private method in the bottom

		if @article.save #is passes all validations in model
			redirect_to @article #shows article with article id
		else
			render 'new' #prevents the page from submitting and renders the same page
		end
	end

	def show
		# renders view
		@article = Article.find(params[:id])
	end

	def edit
		# renders view
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			# new method, update, is used when you want to update a record that already exists,
			# it accepts a hash containing the attributes that you want to update
			redirect_to @article
		else
			render 'edit'
			# if there was an error updating the article we want to show the form back to the user
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

private
  def article_params
  	# allow and require the title and text parameters for valid use of create and update
    params.require(:article).permit(:title, :text)
  end


end
