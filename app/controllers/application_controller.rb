class ApplicationController < ActionController::Base
  @blog = Blog.all
  @skills = Skill.all
end
