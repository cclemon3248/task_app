class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blogs = Blog.all
    @blog = Blog.new
  end

  def create
    @blogs = Blog.all
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to blogs_path
    else
      flash[:error] = "スケジュールを登録できませんでした"
      render "new"
    end
  end

  def show
    @blogs = Blog.all
    @blog = Blog.find(params[:id])
  end

  def edit
    @blogs = Blog.all
    @blog = Blog.find(params[:id])
  end

  def update
    @blogs = Blog.all
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      flash[:notice] = "スケジュールを更新しました"
      redirect_to blogs_path
    else
      flash[:error] = "スケジュールを更新できませんでした"
      render "new"
    end
  end

  def destroy
    @blogs = Blog.all
    @blog = Blog.find(params[:id])
    @blog.delete
    flash[:notice] = "スケジュールを削除しました"
    redirect_to blogs_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :start_date, :end_date, :all_day, :memo)
  end
end
