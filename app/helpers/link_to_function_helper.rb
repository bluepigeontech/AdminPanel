module LinkToFunctionHelper
  def link_to_function(name, *args, &block)
     html_options = args.extract_options!.symbolize_keys

     function = block_given? ? update_page(&block) : args[0] || ''
     onclick = "#{"#{html_options[:onclick]}; " if html_options[:onclick]}#{function}; return false;"
     href = html_options[:href] || '#'

     if name && name.length < 2
     	classes = "right btn-floating red darken-2 waves-effect waves-light"
     else
     	classes = "right btn red darken-2 waves-effect waves-light"
     end

     content_tag(:button, name, html_options.merge(:href => href, :onclick => onclick, :class => classes))
  end
end