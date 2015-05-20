module ArticleHelper
  class CodeRayify < Redcarpet::Render::HTML
    # overwrites the block_code method for RedCarpet so we can
    # parse code blocks with a specific language
    def block_code(code, language)
      CodeRay.scan(code, :ruby).div(line_numbers: :table, hard_wrap: true)
    end
  end

  def markdown(content)
    code_parser = CodeRayify.new(filter_html: true, hard_wrap: true)

    options = {
      fenced_code_blocks: true,
      disable_indented_clode_blocks: true,
      autolink: true
    }

    markdown = Redcarpet::Markdown.new(code_parser, options)
    markdown.render(content).html_safe
  end

end
