require 'spec_helper'

module Liquid
  module Rails
    describe MiscFilter do
      let(:render_context) { ::Liquid::Context.new }
      let(:parse_context) { ::Liquid::ParseContext.new }

      context '#index' do
        it 'returns value at the specified index' do
          render_context['array'] = [1, 2, 3]
          expect(::Liquid::Variable.new("array | index: 0", parse_context).render(render_context)).to eq(1)
        end

        it 'returns nil when outside range' do
          render_context['array'] = [1, 2, 3]
          expect(::Liquid::Variable.new("array | index: 5", parse_context).render(render_context)).to eq(nil)
        end
      end

      it '#jsonify' do
        render_context['listing'] = { name: 'Listing A' }
        expect(::Liquid::Variable.new("listing | jsonify", parse_context).render(render_context)).to eq(%|{"name":"Listing A"}|)
      end
    end
  end
end
