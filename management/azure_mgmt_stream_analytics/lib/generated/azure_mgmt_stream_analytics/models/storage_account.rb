# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # The properties that are associated with an Azure Storage account
    #
    class StorageAccount

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the Azure Storage account. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :account_name

      # @return [String] The account key for the Azure Storage account.
      # Required on PUT (CreateOrReplace) requests.
      attr_accessor :account_key


      #
      # Mapper for StorageAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccount',
          type: {
            name: 'Composite',
            class_name: 'StorageAccount',
            model_properties: {
              account_name: {
                required: false,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              account_key: {
                required: false,
                serialized_name: 'accountKey',
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