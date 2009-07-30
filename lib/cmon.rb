require 'hpricot'

class Cmon
  class << self
    ELEMENT_MAPPING = {
      'cmon' => 'table',
      'baby' => 'tr',
      'yeah' => 'td'
    }

    ATTRIBUTE_MAPPING = {
      'babyspan' => 'rowspan',
      'yeahspan' => 'colspan'
    }

    def process(target)
      doc = Hpricot(target)

      process_element(doc.root)

      doc.to_html
    end

    def process_element(element)
      return unless element.elem?

      if new_name = ELEMENT_MAPPING[element.name]
        element.name = new_name
      end

      element.attributes.each_pair do |name, value|
        if new_name = ATTRIBUTE_MAPPING[name]
          element.remove_attribute(name)
          element.set_attribute(new_name, value)
        end
      end

      element.children.each do |child|
        process_element(child)
      end
    end
  end
end

