module ApplicationHelper

  def link_to_add_mini(url, btn_class = 'btn-primary', id = nil, label = nil)
    link_to(url, :class => "btn btn-xs #{btn_class}", :id => id) do
      "<i class='fa fa-plus'></i> #{label || "Nuevo Disco"}".html_safe
    end
  end

  def link_to_add_to_cart_mini(url, btn_class = 'btn-success', id = nil, label = nil)
    link_to(url, :method => :put, :data => { :confirm => t('.confirm', :default => t("helpers.links.confirm", :default => 'Are you sure?')) }, :class => "btn btn-xs #{btn_class}", :id => id) do
      "<i class='fa fa-cart-arrow-down'></i> #{label || "Añadir al carro"}".html_safe
    end
  end

  def link_to_empty_cart_mini(url, btn_class = 'btn-danger', id = nil, label = nil)
    link_to(url, :method => :put, :data => { :confirm => t('.confirm', :default => t("helpers.links.confirm", :default => 'Are you sure?')) }, :class => "btn btn-xs #{btn_class}", :id => id) do
      "<i class='fa fa-thumbs-down'></i> #{label || "Vaciar carro"}".html_safe
    end
  end

  def link_to_back_mini(url, btn_class = 'btn-default', id = nil)
    link_to(url, :class => "btn btn-xs #{btn_class}", :id => id) do
      "<i class='fa fa-chevron-left'></i> #{"Volver"}".html_safe
    end
  end

  def link_to_checkout_mini(url, btn_class = 'btn-success', id = nil, label = nil)
    link_to(url, :method => :get, :data => { :confirm => t('.confirm', :default => t("helpers.links.confirm", :default => 'Are you sure?')) }, :class => "btn btn-xs #{btn_class}", :id => id) do
      "<i class='fa fa-cart-arrow-down'></i> #{label || "Ver factura"}".html_safe
    end
  end

  def link_to_delete_mini(url, btn_class = 'btn-danger', id = nil, label = nil)
    link_to(url, :method => :delete, :data => { :confirm => t('.confirm', :default => t("helpers.links.confirm", :default => 'Are you sure?')) }, :class => "btn btn-xs #{btn_class}") do
      "<i class='fa fa-trash'></i> #{label || "Eliminar"}".html_safe
    end
  end

  def link_to_edit_mini(url, btn_class = 'btn-primary', id = nil, label = nil)
    link_to(url, :class => "btn btn-xs #{btn_class}", :id => id) do
      "<i class='fa fa-pencil'></i> #{label || "Editar"}".html_safe
    end
  end
   
end