class SubCategoriesController < InheritedResources::Base

  private

    def sub_category_params
      params.require(:sub_category).permit(:name)
    end

end
