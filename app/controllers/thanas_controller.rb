class ThanasController < InheritedResources::Base

  private

    def thana_params
      params.require(:thana).permit(:name)
    end
end

