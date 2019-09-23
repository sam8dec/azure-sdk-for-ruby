# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_07_01
  module Models
    #
    # List of volume resources
    #
    class VolumeList

      include MsRestAzure

      # @return [Array<Volume>] List of volumes
      attr_accessor :value


      #
      # Mapper for VolumeList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'volumeList',
          type: {
            name: 'Composite',
            class_name: 'VolumeList',
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
                      serialized_name: 'VolumeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Volume'
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
