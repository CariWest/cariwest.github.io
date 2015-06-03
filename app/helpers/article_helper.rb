module ArticleHelper

  class CodeRayify < Redcarpet::Render::HTML
    # custom parser, as per Redcarpet's instructions
    def block_code(code, language)
      # set a default language in case it isn't specified
      # setting default in arguments raises a bug
      language = :ruby if language == nil
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

  def format_date(time)
    time.strftime("%e %b %Y")
  end

  def current_user
    @current_user ||= true
  end
end
