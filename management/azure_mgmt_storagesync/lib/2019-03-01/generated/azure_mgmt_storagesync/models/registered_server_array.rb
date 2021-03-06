# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_03_01
  module Models
    #
    # Array of RegisteredServer
    #
    class RegisteredServerArray

      include MsRestAzure

      # @return [Array<RegisteredServer>] Collection of Registered Server.
      attr_accessor :value


      #
      # Mapper for RegisteredServerArray class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegisteredServerArray',
          type: {
            name: 'Composite',
            class_name: 'RegisteredServerArray',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RegisteredServerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RegisteredServer'
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
