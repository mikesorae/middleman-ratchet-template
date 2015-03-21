class UIHelper < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def ui_button(text, url="", type="")
      btn = "btn"
      btn += " #{type}" if type.present?
      "<a class='#{btn}' href='#{url}'>#{text}</a>"
    end
  end
end

::Middleman::Extensions.register(:ui_helper, UIHelper)

