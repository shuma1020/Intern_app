class PagesController < UsersController
  def index
    @users = User.all
end

def show 
    @user = User.find_by(id: params[:id])
end


def update 
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.intro = params[:intro]

    if params[:image]
        @user.image_name = "#{@user.id}.jpg"
        image = params[:image]
        File.binwrite("public/user_images/#{@user.image_name}", image.read)
      end
      
      if @user.save
        flash[:notice] = "ユーザー情報を編集しました"
        redirect_to("/pages/#{@user.id}")
      else
        render("users/edit")
      end
    

end

def edit
    @user = User.find_by(id: params[:id])
  end
  
end
