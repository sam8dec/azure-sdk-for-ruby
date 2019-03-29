# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2018_08_01_preview
  module Models
    #
    # The List Compute Operation operation response.
    #
    class OperationListResult

      include MsRestAzure

      # @return [Array<OperationValue>] The list of compute operations
      attr_accessor :value


      #
      # Mapper for OperationListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationListResult',
          type: {
            name: 'Composite',
            class_name: 'OperationListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OperationValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OperationValue'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
