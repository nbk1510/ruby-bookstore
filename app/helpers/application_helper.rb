module ApplicationHelper
  def get_comment(pid, uid)
    Comment.where(product_id:  pid, user_id: uid);
  end
end
