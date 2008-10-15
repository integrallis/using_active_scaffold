class KeywordController < ApplicationController
  layout 'main'

  ## Where our column definitions go
  active_scaffold :keyword do |conf|
    ## Rearrange order of stuff
    conf.create.columns = [:name, :description]
    conf.update.columns = [:name, :description]    
    conf.list.columns = [:name, :description]

    ## Change the names
    conf.create.link.label = "Add keyword"
    conf.update.link.label = "Edit Keyword"
    conf.delete.link.label = "Delete Keyword"
    
    ## Exclude the show
    conf.actions.exclude :show

    ## Lets switch to using live search
    conf.actions.swap :search, :live_search
  end

#  ActiveScaffold.set_defaults do |config|
#    config.ignore_columns.add [:created_at, :updated_at, :interests]
#  end
end
