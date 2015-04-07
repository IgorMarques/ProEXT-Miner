class Project < ActiveRecord::Base
  belongs_to :sub_theme
  belongs_to :manager
  belongs_to :institution
  
  def theme_name
    sub_theme.theme.name
  end
end
