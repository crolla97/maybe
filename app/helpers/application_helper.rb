module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def header_title(page_title)
    content_for(:header_title) { page_title }
  end

  def permitted_accountable_partial(name)
    name.underscore
  end

  # Wrap view with <%= modal do %> ... <% end %> to have it open in a modal
  # Make sure to add data-turbo-frame="modal" to the link/button that opens the modal
  def modal(height: "max-h-[556px]", width: "max-w-[580px]", modal_classes: "", &block)
    render "shared/modal", height: height, width: width, modal_classes: modal_classes, &block
  end

  def currency_dropdown(currency: nil, options: [], &block)
    render "shared/currency_dropdown", currency: currency, options: options, &block
  end
end
