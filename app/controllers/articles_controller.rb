class ArticlesController < ApplicationController
    
    def new
        @article = Article.new
    end
    
    def create
        #render plain: params[:article].inspect
        @article = Article.new(article_params)#whitelist the values of article
        @article.save
        redirect_to_articles_show(@article)
    end
    
    private
        def article_params
           params.require(:article).permit(:title, :description)
        end
    
end
