
module MarkdownHelper
  def render_markdown(text)
    options = {hard_wrap:true, filter_html:true, autolink:true, no_intraemphasis:true, fenced_code:true, tables:true, footnotes:true}
    Redcarpet::Markdown.new(Redcarpet::Render::HTML.new, options).render(text).html_safe
  end
end
