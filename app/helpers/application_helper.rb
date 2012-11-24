module ApplicationHelper

  #def aa_format(aa, html_options = {}, options = {})
    # 正規表現がわかりましぇん
    #aa = '' if aa.nil?
    #aa = aa.dup
    #wrap_tag = tag('p', html_options, true)
    # aa = sanitize(aa, tags: %w(br)) unless options[:sanitize] == false
    #aa = aa.to_str
    #aa.gsub!(/\\r\\n?/, "\n")
    #aa.gsub!(/(^").+/, "\1<br>")
    #aa.gsub!(/("+)(.?)/, "\1[]")
    # aa.gsub!(/\[^\s]/)
    #aa.gsub!(%r(\n\n+), "<br>")
    #aa.gsub!(%r(([^\n]\n)(?=[^\n])), "\1<br>")
    #aa.gsub!(/(<br>)(+?)/, "\1<br>")
    #aa.insert 0, wrap_tag
    #aa.html_safe.safe_concat("</p>")
  #end

end
