class UIHelper < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def ui_button(text, url="", type: "", outline: false)
      btn = "btn"
      btn += " #{type}" if type.present?
      btn += " btn-outlined" if outline
      "<a class='#{btn}' href='#{url}'>#{text}</a>"
    end
    def ui_switch(on: false)
      toggle = "toggle"
      toggle += " active" if on
      "<div class='#{toggle}'><div class='toggle-handle'></div></div>"
    end
  end
end

::Middleman::Extensions.register(:ui_helper, UIHelper)

