# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # Copy Log Details for a disk
    #
    class DataBoxDiskCopyLogDetails < CopyLogDetails

      include MsRestAzure


      def initialize
        @copyLogDetailsType = "DataBoxDisk"
      end

      attr_accessor :copyLogDetailsType

      # @return [String] Disk Serial Number.
      attr_accessor :disk_serial_number

      # @return [String] Link for copy error logs.
      attr_accessor :error_log_link

      # @return [String] Link for copy verbose logs.
      attr_accessor :verbose_log_link


      #
      # Mapper for DataBoxDiskCopyLogDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataBoxDisk',
          type: {
            name: 'Composite',
            class_name: 'DataBoxDiskCopyLogDetails',
            model_properties: {
              copyLogDetailsType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'copyLogDetailsType',
                type: {
                  name: 'String'
                }
              },
              disk_serial_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'diskSerialNumber',
                type: {
                  name: 'String'
                }
              },
              error_log_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorLogLink',
                type: {
                  name: 'String'
                }
              },
              verbose_log_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'verboseLogLink',
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
