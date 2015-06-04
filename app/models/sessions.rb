class Session

  attr_reader :admin

  def intialize
    @admin = false
  end

  def login(username, password)
    if username == ENV['USERNAME'] && password == ENV['PASSWORD']
      @admin = true
    end

    return @admin
  end

  def logout
    @admin = false
  end

end