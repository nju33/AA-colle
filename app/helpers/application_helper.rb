module ApplicationHelper

  def aa_format(aa, html_options = {}, options = {})
    aa = '' if aa.nil?
    aa = aa.dup
    wrap_tag = tag('p', html_options, true)
    # aa = sanitize(aa, tags: %w(br)) unless options[:sanitize] == false
    aa = aa.to_str
    #aa.gsub!(/\\r\\n?/, "\n")
    aa.gsub!(/\\r\\n+/, "\1<br>")
    aa.gsub!(/([^\n]\n)(?=[^\n])/, "\1<br>")
    aa.insert 0, wrap_tag
    aa.html_safe.safe_concat("</p>")
  end

end
