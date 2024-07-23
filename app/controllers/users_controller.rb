class UsersController<ApplicationController
  def list
    @user_list = User.all.order({:created_at=>:desc})
    render({ :template => "user_templates/list" })
  end
  def insert
    @new_user=User.new
    @new_user.username=params.fetch("query_username")

    @new_user.save
    redirect_to("/users/#{@new_user.username}")

  end

  def edit
    the_username=params.fetch("path_id")
    @the_user=User.where({:username=>the_username}).at(0)
    @the_user.username=params.fetch("query_username")
    @the_user.save
    redirect_to("/users/#{@the_user.username}")

  end

  def show
    the_id=params.fetch("path_id")
    @the_user=User.where(:username=>the_id).at(0)
    render({ :template => "user_templates/show" })
  end


end
