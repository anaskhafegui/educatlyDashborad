Trestle.resource(:products) do
  menu do
    item :products, icon: "fa fa-star"
  end

  active_storage_fields do
    [:image]
  end
 
  # Customize the table columns shown on the index view.
  #
   table do
    column :id , link: true
    column :name
    column :price
    column :image , link: false
    column :description
    column :created_at, align: :center
   actions
  end

  # Customize the form fields shown on the new/edit views.
  #
   form do |product|
     text_field :name
     text_field :price
     active_storage_field :image
     text_field :description
     row do
       col { datetime_field :updated_at }
       col { datetime_field :created_at }
     end
   end

   

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:product).permit(:name, ...)
  # end
end
