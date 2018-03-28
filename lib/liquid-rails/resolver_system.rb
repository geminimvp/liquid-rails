# Class to be used as a Liquid File System for the `include` tag
# (so only for liquid partials)
module Liquid
  module Rails
    class ResolverSystem
      # @param root [String] the root path where all templates may be found
      def initialize(root)
        @root = root
      end

      # Return a valid liquid template string for requested partial path
      # @param template_path [String] the path to the templates
      # @param context
      def read_template_file(template_path, context)
        controller = context.registers[:controller]
        full_path = full_path(template_path, controller)

        name   = full_path.split('/').last
        prefix = full_path.split('/')[0...-1].join('/')

        result = controller.lookup_context.find_all(name, prefix, true)
        raise FileSystemError, "No such template '#{full_path}'" unless result.present?

        # cast to utf8 as it was getting encoding errors
        result.first.source.force_encoding("UTF-8")
      end

      private

      # Join the root with the template file path
      def full_path(template_path, controller)
        controller_path = controller.controller_path
        template_path = "#{controller_path}/#{template_path}" unless template_path.include?('/')
        File.join(root, File.dirname(template_path))
      end
    end
  end
end
