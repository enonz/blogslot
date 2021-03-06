module DeviseHelper
  def devise_error_messages!
    if resource.present?
      return '' if resource.errors.empty?

      messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
      html = <<-HTML
      <div class="notice"> <button type="button"
      class="close" data-dismiss="alert">x</button>
        #{messages}
      </div>
      HTML

      html.html_safe
    end
  end
end