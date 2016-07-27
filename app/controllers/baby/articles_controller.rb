class Baby::ArticlesController < Baby::BaseController
	def index
		@articles = @@department.articles.page(params[:page]).per(5)
		render :template => 'shared/articles/index'
	end

	def show
		@article = Article.find(params[:id])
	end
end
