# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_07_01
  module Models
    #
    # Peerings in a virtual network resource.
    #
    class VirtualNetworkPeering < SubResource

      include MsRestAzure

      # @return [Boolean] Whether the VMs in the local virtual network space
      # would be able to access the VMs in remote virtual network space.
      attr_accessor :allow_virtual_network_access

      # @return [Boolean] Whether the forwarded traffic from the VMs in the
      # local virtual network will be allowed/disallowed in remote virtual
      # network.
      attr_accessor :allow_forwarded_traffic

      # @return [Boolean] If gateway links can be used in remote virtual
      # networking to link to this virtual network.
      attr_accessor :allow_gateway_transit

      # @return [Boolean] If remote gateways can be used on this virtual
      # network. If the flag is set to true, and allowGatewayTransit on remote
      # peering is also true, virtual network will use gateways of remote
      # virtual network for transit. Only one peering can have this flag set to
      # true. This flag cannot be set if virtual network already has a gateway.
      attr_accessor :use_remote_gateways

      # @return [SubResource] The reference of the remote virtual network. The
      # remote virtual network can be in the same or different region
      # (preview). See here to register for the preview and learn more
      # (https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-create-peering).
      attr_accessor :remote_virtual_network

      # @return [AddressSpace] The reference of the remote virtual network
      # address space.
      attr_accessor :remote_address_space

      # @return [VirtualNetworkPeeringState] The status of the virtual network
      # peering. Possible values include: 'Initiated', 'Connected',
      # 'Disconnected'
      attr_accessor :peering_state

      # @return [ProvisioningState] The provisioning state of the virtual
      # network peering resource. Possible values include: 'Succeeded',
      # 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for VirtualNetworkPeering class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkPeering',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkPeering',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              allow_virtual_network_access: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowVirtualNetworkAccess',
                type: {
                  name: 'Boolean'
                }
              },
              allow_forwarded_traffic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowForwardedTraffic',
                type: {
                  name: 'Boolean'
                }
              },
              allow_gateway_transit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowGatewayTransit',
                type: {
                  name: 'Boolean'
                }
              },
              use_remote_gateways: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.useRemoteGateways',
                type: {
                  name: 'Boolean'
                }
              },
              remote_virtual_network: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.remoteVirtualNetwork',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              remote_address_space: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.remoteAddressSpace',
                type: {
                  name: 'Composite',
                  class_name: 'AddressSpace'
                }
              },
              peering_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringState',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
