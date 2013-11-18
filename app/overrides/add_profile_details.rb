Deface::Override.new(:virtual_path  => "spree/users/show",
                     :insert_bottom => ".account-summary dd",
                     :text          => "<dt><%= t(:pesonal_detail) %></dt>
                                        <dd><%= t('profile.first_name') %> : <i> <%= @user.first_name %> </i></dd> 
                                        <dd><%= t('profile.last_name') %> : <i> <%= @user.last_name %> </i></dd>
                                        <dd><%= t('profile.mobile_number') %> : <i> <%= @user.mobile_number %> </i></dd>
                                        <dd><%= t('profile.landline_number') %> : <i> <%= @user.landline_number %> </i></dd>
                                        <dd><%= t('profile.gender') %> : <i> <%= @user.gender %> </i></dd>
                                        <dd><%= link_to t(:edit), user_spree_user_person_detail_path %></dd> ",
                     :name          => "add_profile_details"
                     )
