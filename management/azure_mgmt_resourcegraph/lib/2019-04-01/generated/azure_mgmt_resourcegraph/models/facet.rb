# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceGraph::Mgmt::V2019_04_01
  module Models
    #
    # A facet containing additional statistics on the response of a query. Can
    # be either FacetResult or FacetError.
    #
    class Facet

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["FacetResult"] = "FacetResult"
      @@discriminatorMap["FacetError"] = "FacetError"

      def initialize
        @resultType = "Facet"
      end

      attr_accessor :resultType

      # @return [String] Facet expression, same as in the corresponding facet
      # request.
      attr_accessor :expression


      #
      # Mapper for Facet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Facet',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'resultType',
            uber_parent: 'Facet',
            class_name: 'Facet',
            model_properties: {
              expression: {
                client_side_validation: true,
                required: true,
                serialized_name: 'expression',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
