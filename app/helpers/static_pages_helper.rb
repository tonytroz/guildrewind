module StaticPagesHelper

  def truncate_text(text, maxLength)
    truncate(text, length: maxLength)
  end
end