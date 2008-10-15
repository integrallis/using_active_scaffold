class UserController < ApplicationController
  layout 'main'

  active_scaffold :user do |conf|
    conf.create.columns.add_subgroup "Name" do |name_group|
      name_group.add :first_name, :last_name
    end
  end
end
