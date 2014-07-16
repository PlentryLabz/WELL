class Api::V1::Lists::RecordsController < Api::V1::ApplicationController

  def index
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def resource_list
    List.find(params[:story_id])
  end

end
