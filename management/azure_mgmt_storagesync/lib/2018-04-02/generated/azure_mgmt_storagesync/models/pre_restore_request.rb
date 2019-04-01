# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_04_02
  module Models
    #
    # Pre Restore request object.
    #
    class PreRestoreRequest

      include MsRestAzure

      # @return [String] Pre Restore partition.
      attr_accessor :partition

      # @return [String] Pre Restore replica group.
      attr_accessor :replica_group

      # @return [String] Pre Restore request id.
      attr_accessor :request_id

      # @return [String] Pre Restore Azure file share uri.
      attr_accessor :azure_file_share_uri

      # @return [String] Pre Restore Azure status.
      attr_accessor :status

      # @return [String] Pre Restore Azure source azure file share uri.
      attr_accessor :source_azure_file_share_uri

      # @return [String] Pre Restore backup metadata property bag.
      attr_accessor :backup_metadata_property_bag

      # @return [Array<RestoreFileSpec>] Pre Restore restore file spec array.
      attr_accessor :restore_file_spec

      # @return [Integer] Pre Restore pause wait for sync drain time period in
      # seconds.
      attr_accessor :pause_wait_for_sync_drain_time_period_in_seconds


      #
      # Mapper for PreRestoreRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PreRestoreRequest',
          type: {
            name: 'Composite',
            class_name: 'PreRestoreRequest',
            model_properties: {
              partition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partition',
                type: {
                  name: 'String'
                }
              },
              replica_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicaGroup',
                type: {
                  name: 'String'
                }
              },
              request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              azure_file_share_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureFileShareUri',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              source_azure_file_share_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAzureFileShareUri',
                type: {
                  name: 'String'
                }
              },
              backup_metadata_property_bag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupMetadataPropertyBag',
                type: {
                  name: 'String'
                }
              },
              restore_file_spec: {
                client_side_validation: true,
                required: false,
                serialized_name: 'restoreFileSpec',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RestoreFileSpecElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RestoreFileSpec'
                      }
                  }
                }
              },
              pause_wait_for_sync_drain_time_period_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pauseWaitForSyncDrainTimePeriodInSeconds',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
