# encoding: utf-8
module HappyPdf
  class Schema
    # Get the path to schema files. So it can be used f.ex. with json_schema_tools
    # gem
    # @param [String] version folder name to use
    def self.path(version='v1.0')
      File.expand_path( File.join('../../schema', version), File.dirname(__FILE__))
    end
  end
end