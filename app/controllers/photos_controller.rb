class PhotosController<ApplicationController
  def list
    @photos_list = Photo.all.order({:created_at=>:desc})
    render({ :template => "photo_templates/list" })
  end

  def show
    the_id=params.fetch("path_id")
    @the_photo=Photo.where(:id=>the_id).at(0)
    render({ :template => "photo_templates/show" })
  end

  def add
    @new_photo=Photo.new
    @new_photo.image=params.fetch("url")
    @new_photo.caption=params.fetch("caption")
    @new_photo.owner_id=params.fetch("owner_id")
    @new_photo.save
    redirect_to("/photos/#{@new_photo.id}", { :notice => "Actor created successfully." })
  end

  def edit
    photo_id=params.fetch("path_id")
    @the_pic=Photo.where({:id=>photo_id}).at(0)
    @the_pic.image=params.fetch("new_url")
    @the_pic.caption=params.fetch("new_caption")
    @the_pic.save
    redirect_to("/photos/#{@the_pic.id}")

  end

  def delete
    photo_id=params.fetch("path_id")
    @the_pic=Photo.where({:id=>photo_id}).at(0)
    @the_pic.destroy
    redirect_to("/photos")

  end



end
