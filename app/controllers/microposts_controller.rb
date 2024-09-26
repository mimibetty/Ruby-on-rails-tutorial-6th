class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def index
    @microposts = Micropost.includes(:user, image_attachment: :blob)
                           .paginate(page: params[:page], per_page: 20) # use includes to avoid N+1 query
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    @micropost.image.attach(micropost_params[:image]) # maybe not necessary because rails do it when include image in strong param
    if @micropost.save
      flash[:success] = 'Micropost created!'
      redirect_to root_url
    else
      @feed_items = current_user.feed.paginate(page: params[:page])
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = 'Micropost deleted'
    redirect_to request.referrer || root_url
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content, :image)
  end

  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
    redirect_to root_url if @micropost.nil?
  end
end
