# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # The Network Adapter configuration of a DataBox.
    #
    class ApplianceNetworkConfiguration

      include MsRestAzure

      # @return [String] Name of the network.
      attr_accessor :name

      # @return [String] Mac Address.
      attr_accessor :mac_address


      #
      # Mapper for ApplianceNetworkConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplianceNetworkConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplianceNetworkConfiguration',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              mac_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'macAddress',
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
