# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2017_09_01_preview
  module Models
    #
    # The result of the request or operation.
    #
    class DeleteOperationResult

      include MsRestAzure

      # @return [Boolean] The result of the operation or request.
      attr_accessor :operation_result


      #
      # Mapper for DeleteOperationResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeleteOperationResult',
          type: {
            name: 'Composite',
            class_name: 'DeleteOperationResult',
            model_properties: {
              operation_result: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'boolean',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
