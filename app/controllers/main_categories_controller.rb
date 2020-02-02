class MainCategoriesController < InheritedResources::Base

  def index
    @main_categories = MainCategory.all()
  end


  private



  
    def main_category_params
      params.require(:main_category).permit(:name)
    end



end
