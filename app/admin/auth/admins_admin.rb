Trestle.resource(:admins, model: Administrator, scope: Auth) do
  menu do
    group :configuration, priority: :last do
      item :admins, icon: "fas fa-users"
    end
  end

  table do
    column :avatar, header: false do |administrator|
      avatar_for(administrator)
    end
    column :email, link: true
    column :first_name
    column :last_name
    column :created_at
    column :updated_at
    actions do |a|
      a.delete unless a.instance == current_user
    end
  end

  form do |admin|
    text_field :email

    row do
      col(sm: 6) { text_field :first_name }
      col(sm: 6) { text_field :last_name }
    end

    row do
      col(sm: 6) { password_field :password }
      col(sm: 6) { password_field :password_confirmation }
    end

    row do
      col { datetime_field :updated_at }
      col { datetime_field :created_at }
    end
  end
end
