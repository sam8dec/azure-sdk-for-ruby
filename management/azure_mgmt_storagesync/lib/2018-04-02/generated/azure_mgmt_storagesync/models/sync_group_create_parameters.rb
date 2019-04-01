# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_04_02
  module Models
    #
    # The parameters used when creating a sync group.
    #
    class SyncGroupCreateParameters

      include MsRestAzure

      # @return [String] Required. Gets or sets the location of the resource.
      # This will be one of the supported and registered Azure Geo Regions
      # (e.g. West US, East US, Southeast Asia, etc.). The geo region of a
      # resource cannot be changed once it is created, but if an identical geo
      # region is specified on update, the request will succeed.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets a list of key value pairs
      # that describe the resource. These tags can be used for viewing and
      # grouping this resource (across resource groups). A maximum of 15 tags
      # can be provided for a resource. Each tag must have a key with a length
      # no greater than 128 characters and a value with a length no greater
      # than 256 characters.
      attr_accessor :tags

      # @return The parameters used to create the sync group
      attr_accessor :properties


      #
      # Mapper for SyncGroupCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SyncGroupCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'SyncGroupCreateParameters',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
