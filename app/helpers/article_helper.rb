module ArticleHelper

  class CodeRayify < Redcarpet::Render::HTML
    # overwrites the block_code method for RedCarpet so we can
    # parse code blocks with a specific language. Would love to make
    # this use GitHub instead of CodeRay
    def block_code(code, language = :ruby)
      CodeRay.scan(code, language).div(line_numbers: :table, hard_wrap: true)
    end
  end

  def renderer
    options = {
      filter_html: true,
      hard_wrap: true
    }

    CodeRayify.new(options)
  end

  def markdown(content)
    options = {
      fenced_code_blocks: true,
      disable_indented_clode_blocks: true,
      autolink: true
    }

    markdown = Redcarpet::Markdown.new(renderer, options)
    markdown.render(content).html_safe
  end
end
