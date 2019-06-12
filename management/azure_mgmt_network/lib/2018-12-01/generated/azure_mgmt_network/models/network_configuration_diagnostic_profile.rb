# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Parameters to compare with network configuration.
    #
    class NetworkConfigurationDiagnosticProfile

      include MsRestAzure

      # @return [Direction] The direction of the traffic. Accepted values are
      # 'Inbound' and 'Outbound'. Possible values include: 'Inbound',
      # 'Outbound'
      attr_accessor :direction

      # @return [String] Protocol to be verified on. Accepted values are '*',
      # TCP, UDP.
      attr_accessor :protocol

      # @return [String] Traffic source. Accepted values are '*', IP
      # Address/CIDR, Service Tag.
      attr_accessor :source

      # @return [String] Traffic destination. Accepted values are: '*', IP
      # Address/CIDR, Service Tag.
      attr_accessor :destination

      # @return [String] Traffic destination port. Accepted values are '*',
      # port (for example, 3389) and port range (for example, 80-100).
      attr_accessor :destination_port


      #
      # Mapper for NetworkConfigurationDiagnosticProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkConfigurationDiagnosticProfile',
          type: {
            name: 'Composite',
            class_name: 'NetworkConfigurationDiagnosticProfile',
            model_properties: {
              direction: {
                required: true,
                serialized_name: 'direction',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                required: true,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              source: {
                required: true,
                serialized_name: 'source',
                type: {
                  name: 'String'
                }
              },
              destination: {
                required: true,
                serialized_name: 'destination',
                type: {
                  name: 'String'
                }
              },
              destination_port: {
                required: true,
                serialized_name: 'destinationPort',
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
