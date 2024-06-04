class TasksController < ApplicationController
    include ResourceLoader

    private

def resource_params
    params.require(:task).permit(:name,:description,:due_date:,:priority,:status,:user_id)
end
end
