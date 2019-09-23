# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_07_01
  module Models
    #
    # NetApp account patch resource
    #
    class NetAppAccountPatch

      include MsRestAzure

      # @return [String] Resource location
      attr_accessor :location

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return Resource tags
      attr_accessor :tags

      # @return [String] Azure lifecycle management
      attr_accessor :provisioning_state

      # @return [Array<ActiveDirectory>] Active Directories
      attr_accessor :active_directories


      #
      # Mapper for NetAppAccountPatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'netAppAccountPatch',
          type: {
            name: 'Composite',
            class_name: 'NetAppAccountPatch',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Object'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              active_directories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.activeDirectories',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActiveDirectoryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActiveDirectory'
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
