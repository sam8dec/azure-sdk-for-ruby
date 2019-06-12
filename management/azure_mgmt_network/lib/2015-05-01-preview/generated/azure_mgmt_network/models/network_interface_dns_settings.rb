# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2015_05_01_preview
  module Models
    #
    # Dns Settings of a network interface
    #
    class NetworkInterfaceDnsSettings

      include MsRestAzure

      # @return [Array<String>] Gets or sets list of DNS servers IP addresses
      attr_accessor :dns_servers

      # @return [Array<String>] Gets or sets list of Applied DNS servers IP
      # addresses
      attr_accessor :applied_dns_servers

      # @return [String] Gets or sets the Internal DNS name
      attr_accessor :internal_dns_name_label

      # @return [String] Gets or sets full IDNS name in the form,
      # DnsName.VnetId.ZoneId.TopLevelSuffix. This is set when the NIC is
      # associated to a VM
      attr_accessor :internal_fqdn


      #
      # Mapper for NetworkInterfaceDnsSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkInterfaceDnsSettings',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterfaceDnsSettings',
            model_properties: {
              dns_servers: {
                required: false,
                serialized_name: 'dnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              applied_dns_servers: {
                required: false,
                serialized_name: 'appliedDnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              internal_dns_name_label: {
                required: false,
                serialized_name: 'internalDnsNameLabel',
                type: {
                  name: 'String'
                }
              },
              internal_fqdn: {
                required: false,
                serialized_name: 'internalFqdn',
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
