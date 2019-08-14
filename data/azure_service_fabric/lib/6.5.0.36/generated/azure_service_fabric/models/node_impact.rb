# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Describes the expected impact of a repair to a particular node.
    #
    # This type supports the Service Fabric platform; it is not meant to be
    # used directly from your code.
    #
    class NodeImpact

      include MsRestAzure

      # @return [String] The name of the impacted node.
      attr_accessor :node_name

      # @return [ImpactLevel] The level of impact expected. Possible values
      # include: 'Invalid', 'None', 'Restart', 'RemoveData', 'RemoveNode'
      attr_accessor :impact_level


      #
      # Mapper for NodeImpact class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeImpact',
          type: {
            name: 'Composite',
            class_name: 'NodeImpact',
            model_properties: {
              node_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              impact_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ImpactLevel',
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