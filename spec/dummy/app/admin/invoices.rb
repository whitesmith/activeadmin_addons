ActiveAdmin.register Invoice do
  permit_params :legal_date, :number, :paid, :state, :attachment, :photo, :category_id,
    :city_id, :amount, :color, :updated_at, :active, item_ids: [], other_item_ids: []

  filter :id, as: :numeric_range_filter

  filter :category_id, as: :search_select_filter,
                       url: proc { current_admin_user.categories_url },
                       fields: [:name],
                       minimum_input_length: 0

  filter :buyer_id, as: :search_select_filter,
                    minimum_input_length: 0,
                    url: '/admin/admin_users',
                    fields: [:email],
                    display_name: :email

  index do
    selectable_column
    id_column
    tag_column :state, interactive: true
    bool_column :paid
    image_column :photo, style: :thumb
    attachment_column :attachment
    number_column :amount, as: :currency, unit: "$", separator: ","
    list_column :skills
    list_column :contact
    toggle_bool_column :active
    actions
  end

  show do
    attributes_table do
      row :id
      tag_row :state
      state_row :aasm_state
      bool_row :paid
      list_row :skills, list_type: :ol
      list_row :contact, localize: true
      list_row :details, localize: true
      image_row("Mi foto", :photo, style: :big, &:photo)
      attachment_row("My doc", :attachment, label: 'Download file', truncate: false, &:attachment)
      row :legal_date
      number_row("Monto", :amount, as: :human, &:amount)
      row :city
      bool_row :active
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :updated_at, as: :date_time_picker,
                           picker_options: {
                             min_date: Date.current - 2.days,
                             allow_times: [
                               '12:10', '13:10', '15:10',
                               '17:10', '18:10', '19:10'
                             ]
                           }

      f.input :state

      f.input :category_id, as: :search_select,
                            url: proc { current_admin_user.categories_url },
                            fields: [:name],
                            display_name: 'name',
                            minimum_input_length: 1,
                            width: '50%'
      f.input :paid

      f.input :amount

      f.input :number, as: :tags,
                       collection: ["0002-00000001", "0002-00004684"],
                       width: "400px"

      f.input :item_ids, as: :selected_list,
                         width: "40%",
                         fields: [:name],
                         display_name: :name,
                         minimum_input_length: 1

      f.input :other_item_ids, as: :tags, collection: Item.all.limit(5)

      f.input :attachment

      f.input :photo

      f.input :color, as: :color_picker,
                      palette: Invoice.colors

      f.input :city_id, as: :nested_select,
                        width: "50%",
                        fields: [:name],
                        display_name: 'name',
                        minimum_input_length: 0,
                        level_1: {
                          attribute: :country_id,
                          collection: Country.all
                        },
                        level_2: {
                          attribute: :region_id
                        },
                        level_3: {
                          attribute: :city_id,
                          minimum_input_length: 1,
                          fields: [:name, :information],
                          predicate: :start
                        }
    end

    f.actions
  end
end
