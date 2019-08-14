# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Migrate::Mgmt::V2018_02_02
  module Models
    #
    # A network adapter discovered on a machine.
    #
    class NetworkAdapter

      include MsRestAzure

      # @return [String] MAC Address of the network adapter.
      attr_accessor :mac_address

      # @return [Array<String>] List of IP Addresses on the network adapter.
      attr_accessor :ip_addresses


      #
      # Mapper for NetworkAdapter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkAdapter',
          type: {
            name: 'Composite',
            class_name: 'NetworkAdapter',
            model_properties: {
              mac_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'macAddress',
                type: {
                  name: 'String'
                }
              },
              ip_addresses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ipAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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