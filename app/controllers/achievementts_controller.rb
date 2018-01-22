class AchievementtsController < ApplicationController
    def new
        @achievement = Achievementt.new
    end
end