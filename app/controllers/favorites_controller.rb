class FavoritesController < ApplicationController
  before_action :set_photo, only: %i[ show ]

  def create
    favorite = current_user.favorites.create(photo_id: params[:photo_id])
    redirect_to photos_path, notice: "#{favorite.photo.user.name}さんのフォトをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to photos_path, notice: "#{favorite.photo.user.name}さんのフォトをお気に入り解除しました"
  end

  def show
    @favorite = current_user.favorites.where(user_id: current_user.id)
  end
  
  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

end
