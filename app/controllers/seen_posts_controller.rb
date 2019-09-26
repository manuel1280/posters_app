class SeenPostsController < ApplicationController
  before_action :authenticate_user!

  def create
    user_id = params[:user_id]
    micropost_id = params[:micropost_id]

    @post_seen = SeenPost.new(user_id: user_id, micropost_id: micropost_id)
    respond_to do |format|
      if @post_seen.save
        format.html { redirect_to microposts_path, notice: 'post was archived' }
        format.json 
      else
        format.html { redirect_to microposts_path, alert: 'error.' }
        format.json { render json: @post_seen.errors, status: :unprocessable_entity }
        
      end
    end
  end

  def destroy
  end

  private
  # def post_seen_params
  #       params.require(:post_seen).permit(:user_id, :micropost_id)
  # end
end
