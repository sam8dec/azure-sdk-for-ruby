# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Hybrid Connection key contract. This has the send key name and value for
    # a Hybrid Connection.
    #
    class HybridConnectionKey < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] The name of the send key.
      attr_accessor :send_key_name

      # @return [String] The value of the send key.
      attr_accessor :send_key_value


      #
      # Mapper for HybridConnectionKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HybridConnectionKey',
          type: {
            name: 'Composite',
            class_name: 'HybridConnectionKey',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              send_key_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.sendKeyName',
                type: {
                  name: 'String'
                }
              },
              send_key_value: {
                required: false,
                read_only: true,
                serialized_name: 'properties.sendKeyValue',
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