class ProjectsController < ApplicationController
include ResourceLoader

private
def resource_params
    params.require(:project).permit(:name,:description,:start_date,:end_date,:status)
end

end
