class UsersController<ApplicationController
  def list
    @user_list = User.all.order({:created_at=>:desc})
    render({ :template => "user_templates/list" })
  end
end
