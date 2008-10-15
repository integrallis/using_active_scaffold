class CategoryController < ApplicationController
  
  layout 'main'
  
  active_scaffold :category do |conf|
   conf.create.columns = :name
    conf.update.columns = :name
    conf.list.columns = :name

    ## Change the names
    conf.create.link.label = "Add Category"
    conf.update.link.label = "Edit Category"
    conf.delete.link.label = "Delete Category"
    
    ## Exclude the show
    conf.actions.exclude :show

    ## Lets switch to using live search
    conf.actions.swap :search, :live_search
  end

  
end
