class CommentsController < ApplicationController
  helper_method :get_comment

  def create
    # debugger
    if Comment.new(comment_params)
      puts "got new params"
      com = Comment.new(comment_params)
      com.save
      p = Product.find(comment_params[:product_id])
      p.times_rated += 1
      p.total_rating += comment_params[:rating].to_i
      p.save
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:product_id, :user_id, :text, :rating)
  end
end
