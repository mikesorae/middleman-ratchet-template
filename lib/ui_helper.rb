class UIHelper < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def ui_button(text, url="", type: "", outline: false)
      btn = "btn"
      btn += " btn-#{type}" if type.present?
      btn += " btn-outlined" if outline
      "<a class='#{btn}' href='#{url}'>#{text}</a>"
    end

    def ui_switch(on: false)
      toggle = "toggle"
      toggle += " active" if on
      "<div class='#{toggle}'><div class='toggle-handle'></div></div>"
    end

    def ui_badge(number, type: "", invert: false)
      badge = "badge"
      badge += " badge-#{type}" if type.present?
      badge += " badge-inverted" if invert
      "<span class='#{badge}'>#{number}</span>"
    end

    def ui_segment(items, selected: 0)
      html = "<div class='segmented-control'>"

      items.each_with_index do |item, index|
        klass = "control-item"
        klass += " active" if index == selected
        html += "<a class='#{klass}'>#{item}</a>"
      end

      html += "</div>"
    end
  end
end

::Middleman::Extensions.register(:ui_helper, UIHelper)

