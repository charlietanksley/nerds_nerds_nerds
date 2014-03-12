require 'nerds_nerds_nerds/html'

module NerdsNerdsNerds
  Nerd = Struct.new(:html_node) do
    def image(basepath: HTMLConfiguration.image_base_path)
      @image ||= begin
                   img_node = html_node.at_css(HTMLConfiguration.image_node_css_path)
                   name = img_node.attribute_nodes.first.inner_text

                   [basepath, name].join('/').squeeze('/')
                 end
    end
  end
end
