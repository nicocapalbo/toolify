class ToolsController < ApplicationController
  def index
    if params[:query].present?
      @tools = Tool.search_by_name_and_location(params[:query])
    else
      @tools = Tool.all
    end
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user_id = current_user.id

    if @tool.save
      redirect_to tool_path(@tool)
    else
      render :new
    end
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    @tool.update(tool_params)

    redirect_to tool_path(@tool)
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy

    redirect_to tools_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :description, :location, :price, :photo)
  end
end
