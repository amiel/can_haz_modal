infos = <<-INFOS

  Requests with the format of :partial will now render with no layout
  The format will be adjusted back to :html so that your html views will be rendered even when the :partial format is specified
  
  Two things you will need to do to take advantage of this plugin:
    
    1. add :format => :partial to links that you want to open in a modal
    
      Example: new_user_session_path(:format => :partial)
      
    2. Setup some sort of modal javascript library and make it open for links that end with .partial
  
      Here is an example using jQuery and Boxy:

        $('[href$=.partial]').boxy();

    3. Profit

INFOS

longest_line = infos.max {|a,b| a.length <=> b.length }.length

puts "*" * longest_line
puts infos
puts "*" * longest_line
