# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # The requirements to validate customer address where the device needs to
    # be shipped.
    #
    class ValidateAddress

      include MsRestAzure

      # @return [ShippingAddress] Shipping address of the customer.
      attr_accessor :shipping_address

      # @return [SkuName] Device type to be used for the job. Possible values
      # include: 'DataBox', 'DataBoxDisk', 'DataBoxHeavy'
      attr_accessor :device_type


      #
      # Mapper for ValidateAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateAddress',
          type: {
            name: 'Composite',
            class_name: 'ValidateAddress',
            model_properties: {
              shipping_address: {
                client_side_validation: true,
                required: true,
                serialized_name: 'shippingAddress',
                type: {
                  name: 'Composite',
                  class_name: 'ShippingAddress'
                }
              },
              device_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'deviceType',
                type: {
                  name: 'Enum',
                  module: 'SkuName'
                }
              }
            }
          }
        }
      end
    end
  end
end
