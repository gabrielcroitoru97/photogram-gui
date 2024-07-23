class CommentsController<ApplicationController
  def add_comment
    @new_comment = Comment.new
    @new_comment.photo_id = params.fetch("query_photo_id")
    @new_comment.author_id = params.fetch("query_author_id")
    @new_comment.body = params.fetch("query_comment")
    
    if @new_comment.save
      puts "comment saved successfully"
      redirect_to("/photos/#{@new_comment.photo_id}")
    else
      # Handle failure (although you mentioned not to discuss error handling)
      render({ :template => "comments/new" })
    end
  end

end
