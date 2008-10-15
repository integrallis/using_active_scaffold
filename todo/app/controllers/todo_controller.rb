class TodoController < ApplicationController  
  layout 'main'
  
  active_scaffold :todo do |conf|
    
    ##conf.columns[:users].form_ui = :select
    ##conf.columns[:complete].form_ui = :radio

    conf.create.columns = [:complete, :name, :description]
    conf.update.columns = [:complete, :name, :description]
    conf.list.columns = [:complete, :name, :description, :priority, :due_date, :category, :keywords]

    ##conf.columns[:due_date].form_ui = :calendar
    ##conf.columns[:name].forum_ui = :password
    
    conf.columns[:category].form_ui = :select
    conf.columns[:keywords].form_ui = :select
    conf.columns[:description].form_ui = :textarea
    conf.columns[:complete].form_ui = :checkbox

    ##conf.list.sorting = { :due_date => :asc }
    #conf.list.sorting = { :priority => :asc }
    conf.list.sorting = [{ :due_date => :asc }, { :priority => :asc }]
    
    ## Lets switch to using live search
    #conf.actions.swap :search, :live_search

    ## Add items to our search
    conf.columns[:keywords].search_sql = 'keywords.name'
    conf.search.columns << :keywords

    conf.columns[:category].search_sql = 'categories.name'
    conf.search.columns << :category
    
    conf.create.columns.add_subgroup "Details" do |name_group|
      name_group.add :priority, :due_date, :category, :keywords
    end
  end
end
