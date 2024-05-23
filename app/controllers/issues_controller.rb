class IssuesController < ApplicationController
include ResourceLoader

private

def resource_params
    params.require(:issue).permit(:title,:description,:status,:priority,:assigned_to,:created_by)
end
end
