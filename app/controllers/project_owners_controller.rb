class ProjectOwnersController < ApplicationController
    include ResourceLoader


private

def resource_params
params.require(:project_owner).permit(:user_id,:project_id)
end
end
