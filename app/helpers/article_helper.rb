module ArticleHelper

  def codify(text)
    html = CodeRay.scan(text, :ruby).div(line_numbers: :table)
  end

  def markdown(content)
    options = {
      disable_indented_clode_blocks: true,
      autolink: true,
      lax_spacing: true,
      quote: true
    }

    markdown = Redcarpet::Markdown.new(Redcarpet::Renderer::HTML, options)

    markdown.render(content).html_safe
  end

end
