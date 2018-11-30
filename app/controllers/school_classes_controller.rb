class SchoolClassesController < ApplicationController

def new
  @school_class = SchoolClass.new
end

def create
  @school_class = SchoolClass.create(post_params)
  redirect_to school_class_path(@school_class)
end

def show
  @school_class = SchoolClass.find_by_id(params[:id])
end

def edit
    @school_class = SchoolClass.find_by_id(params[:id])
end

def update
  @school_class = SchoolClass.find_by_id(params[:id])
  @school_class.update(post_params)
  redirect_to school_class_path(@school_class)
end



private

  def post_params
    params.require(:school_class).permit(:title , :room_number)
  end

end
