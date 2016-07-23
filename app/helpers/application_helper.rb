module ApplicationHelper

  FLASH_CSS_MAP = {
      success: " alert alert-dismissible alert-success ",
      error:   " alert alert-dismissible alert-danger ",
      alert:   " alert alert-dismissible alert-warning ",
      notice:  " alert alert-dismissible alert-success ",
  }

  def flash_css(flash_type)
    FLASH_CSS_MAP[flash_type.to_sym] || flash_type.to_s
  end

  def page_title(title)
    content_for(:page_title) { title.to_s }
  end


end
