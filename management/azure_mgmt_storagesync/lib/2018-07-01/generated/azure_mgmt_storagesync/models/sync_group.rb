# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_07_01
  module Models
    #
    # Sync Group object.
    #
    class SyncGroup < ProxyResource

      include MsRestAzure

      # @return [String] Unique Id
      attr_accessor :unique_id

      # @return [String] Sync group status
      attr_accessor :sync_group_status


      #
      # Mapper for SyncGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SyncGroup',
          type: {
            name: 'Composite',
            class_name: 'SyncGroup',
            model_properties: {
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
              unique_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.uniqueId',
                type: {
                  name: 'String'
                }
              },
              sync_group_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.syncGroupStatus',
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
