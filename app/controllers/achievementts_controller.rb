class AchievementtsController < ApplicationController
  def new
    @achievement = Achievementt.new
  end

  def create
    @achievement = Achievementt.new(achievement_params)
    if @achievement.save
      redirect_to root_url, notice: 'Achievement has been created'
    else
      render :new
    end
  end

  def show
    @achievement = Achievementt.find(params[:id])
    #@description = Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(@achievement.description)
  end

  private

  def achievement_params
    params.require(:achievementt).permit(:title, :description, :privacy, :cover_image, :featured)
  end
end