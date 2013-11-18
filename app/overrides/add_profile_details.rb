Deface::Override.new(:virtual_path  => "spree/users/show",
                     :insert_bottom => ".account-summary dd",
                     :text          => "<dt>Person Detail</dt>
                                        <dd><a href='/user/spree_user/person_detail'>Edit</a></dd> ",
                     :name          => "add_profile_details"
                     )
