# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Base class for output.
    #
    class Format

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.ImageFormat"] = "ImageFormat"
      @@discriminatorMap["#Microsoft.Media.JpgFormat"] = "JpgFormat"
      @@discriminatorMap["#Microsoft.Media.PngFormat"] = "PngFormat"
      @@discriminatorMap["#Microsoft.Media.MultiBitrateFormat"] = "MultiBitrateFormat"
      @@discriminatorMap["#Microsoft.Media.Mp4Format"] = "Mp4Format"
      @@discriminatorMap["#Microsoft.Media.TransportStreamFormat"] = "TransportStreamFormat"

      def initialize
        @odatatype = "Format"
      end

      attr_accessor :odatatype

      # @return [String] The pattern of the file names for the generated output
      # files. The following macros are supported in the file name: {Basename}
      # - The base name of the input video {Extension} - The appropriate
      # extension for this format. {Label} - The label assigned to the
      # codec/layer. {Index} - A unique index for thumbnails. Only applicable
      # to thumbnails. {Bitrate} - The audio/video bitrate. Not applicable to
      # thumbnails. {Codec} - The type of the audio/video codec. Any
      # unsubstituted macros will be collapsed and removed from the filename.
      attr_accessor :filename_pattern


      #
      # Mapper for Format class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Format',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'Format',
            class_name: 'Format',
            model_properties: {
              filename_pattern: {
                client_side_validation: true,
                required: true,
                serialized_name: 'filenamePattern',
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
