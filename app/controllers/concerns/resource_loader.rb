module ResourceLoader
    extend ActiveSupport::Concern
  
    included do
      before_action :load_resource, only: [:show, :edit, :update, :destroy]
    end
  
    def index
      instance_variable_set("@#{controller_name}", resource_class.all)
    end
  
    def show
      # @resource is already set by load_resource
    end
  
    def new
      instance_variable_set("@#{controller_name.singularize}", resource_class.new)
    end
  
    def create
      resource = resource_class.new(resource_params)
      instance_variable_set("@#{controller_name.singularize}", resource)
      if resource.save
        redirect_to resource, notice: "#{resource_class} was successfully created."
      else
        render :new
      end
    end
  
    def edit
      # @resource is already set by load_resource
    end
  
    def update
      # @resource is already set by load_resource
      if resource.update(resource_params)
        redirect_to resource, notice: "#{resource_class} was successfully updated."
      else
        render :edit
      end
    end
  
    def destroy
      # @resource is already set by load_resource
      resource.destroy
      redirect_to send("#{controller_name}_url"), notice: "#{resource_class} was successfully destroyed."
    end
  
    private
  
    def load_resource
      instance_variable_set("@#{controller_name.singularize}", resource_class.find(params[:id]))
    end
  
    def resource_class
      controller_name.classify.constantize
    end
  
    def resource
      instance_variable_get("@#{controller_name.singularize}")
    end
  
    def resource_params
      params.require(controller_name.singularize.to_sym).permit!
    end
  end
  