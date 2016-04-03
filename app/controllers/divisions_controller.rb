class DivisionsController < InheritedResources::Base
  private

    def division_params
      params.require(:division).permit(:name)
    end
end

