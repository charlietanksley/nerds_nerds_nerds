require 'nerds_nerds_nerds/html'

module NerdsNerdsNerds
  Nerd = Struct.new(:html_node) do
    def html_id
      name.gsub(/\s+/, '-').downcase
    end

    def image(basepath: HTMLConfiguration.image_base_path)
      @image ||= Array[basepath, html_node
          .at_css(HTMLConfiguration.image_node_css_path)
          .attribute_nodes
          .first
          .inner_text]
        .join('/')
        .squeeze('/')
    end

    def name
      @name ||= html_node
        .at_css(HTMLConfiguration.name_css_path)
        .inner_html
    end
  end
end
