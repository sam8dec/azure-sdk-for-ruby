# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_02_01
  module Models
    #
    # Backup request
    #
    class BackupRequest

      include MsRestAzure

      # @return [String] Azure File Share.
      attr_accessor :azure_file_share


      #
      # Mapper for BackupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupRequest',
          type: {
            name: 'Composite',
            class_name: 'BackupRequest',
            model_properties: {
              azure_file_share: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureFileShare',
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
