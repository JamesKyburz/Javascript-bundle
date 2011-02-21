class Writer
  attr_reader :document
  def initialize(content)
    @document = "/a.out"
    @content =  content.respond_to?(:join) ? content.join : content
  end
  def write
    File.open(document,"w") do |f|
    	f.write <<-EOF
    var console = {
      log:function() { 
        var slice = Array.prototype.slice;
        var args = slice.call(arguments);  
        print(args);
        print("<br />"); 
      }
    };
    	EOF
    	f.write ENV['JS_EXTRAS']
    	f.write @content
    	f.write "\n";
    	f.write "quit();"
    end
  end
end