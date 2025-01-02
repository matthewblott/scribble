module ApplicationHelper
  def set_page_title(title)
    content_for(:page_title, title)
  end

  def native_app?
    ios_app? or android_app?
  end

  def ios_app?
    user_agent = request.user_agent
    user_agent.include?("Turbo Native iOS")
  end

  def android_app?
    user_agent = request.user_agent
    user_agent.include?("Turbo Native Android")
  end
end
