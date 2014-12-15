class ComponentsController < ApplicationController
  helper :markdown
  def index
    @components=Component.all
  end

  def new
    @component=Component.new
  end

  def create
    @component = Component.new(component_params)
    @component.save
    redirect_to components_path
  end

  def edit
    component
  end

  def destroy
    puts "Component class is #{component.class}"
    component.destroy
    redirect_to components_path

  end

  private

  def component_params
    params.require(:component).permit(:name, :text)
  end

  def component
    id = params[:id]
    @component ||= Component.find(id)
  end
end
