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

  private

  def component_params
    params.require(:component).permit(:name, :text)
  end
end
