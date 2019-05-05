class Api::V1::RelationshipsController < ApplicationController
  def create
    @relationship = Relationship.new(follower_id: params[:follower_id], followed_id: params[:followed_id])

    if @relationship.save
      render json: @relationship
    else
      render :json => { :errors => @relationship.errors.full_messages }, :status => 422
    end
  end

  def destroy
    @relationship = Relationship.find(params[:id])
    if @relationship
      @relationship.destroy
      render json: {}, status: 200
    else
      render :json {:errors => {"record not found"}}
    end
  end
end
