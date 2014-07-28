class Api::V1::ListsController < Api::V1::ApplicationController

  def index
    @lists = List.where(user_id: params[:user_id])
    respond_with(@lists, location: nil)
  end

  def show
    @list = List.find(params[:id])
    respond_with(@list, location: nil)
  end

  def create
    @list = List.new(params[:list])

    if @list.save
      respond_with(@list, location: nil)
    else
      render json: {errors: @list.errors_full_messages}, status: 422
    end
  end

  def update
    @list = List.find(params[:id])

    if @list.update_attributes(params[:list])
      respond_with(@list, location: nil)
    else
      render json: {errors: @list.errors_full_messages}, status: 422
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    respond_with(@list, location: nil)
  end

end
