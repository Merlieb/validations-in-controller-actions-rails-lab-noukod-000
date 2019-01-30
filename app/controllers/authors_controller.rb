class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
<<<<<<< HEAD
    @author = Author.new(author_params)
=======
    @author = Author.create!(author_params)
>>>>>>> 71191312b12e267be912ecacb14993b19f4a4d38
      if @author.valid?
        @author.save
    redirect_to author_path(@author)
  else
    render :new
  end
end
  private

  def author_params
    params.permit(:email, :name)
  end
end
