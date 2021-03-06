# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_newssearch'

module Azure::NewsSearch::Profiles::Latest
  NewsOperations = Azure::CognitiveServices::NewsSearch::V1_0::NewsOperations

  module Models
    ResponseBase = Azure::CognitiveServices::NewsSearch::V1_0::Models::ResponseBase
    Error = Azure::CognitiveServices::NewsSearch::V1_0::Models::Error
    Query = Azure::CognitiveServices::NewsSearch::V1_0::Models::Query
    NewsArticle = Azure::CognitiveServices::NewsSearch::V1_0::Models::NewsArticle
    SearchResultsAnswer = Azure::CognitiveServices::NewsSearch::V1_0::Models::SearchResultsAnswer
    News = Azure::CognitiveServices::NewsSearch::V1_0::Models::News
    ImageObject = Azure::CognitiveServices::NewsSearch::V1_0::Models::ImageObject
    NewsTopic = Azure::CognitiveServices::NewsSearch::V1_0::Models::NewsTopic
    Article = Azure::CognitiveServices::NewsSearch::V1_0::Models::Article
    Identifiable = Azure::CognitiveServices::NewsSearch::V1_0::Models::Identifiable
    Response = Azure::CognitiveServices::NewsSearch::V1_0::Models::Response
    Answer = Azure::CognitiveServices::NewsSearch::V1_0::Models::Answer
    Thing = Azure::CognitiveServices::NewsSearch::V1_0::Models::Thing
    TrendingTopics = Azure::CognitiveServices::NewsSearch::V1_0::Models::TrendingTopics
    MediaObject = Azure::CognitiveServices::NewsSearch::V1_0::Models::MediaObject
    VideoObject = Azure::CognitiveServices::NewsSearch::V1_0::Models::VideoObject
    CreativeWork = Azure::CognitiveServices::NewsSearch::V1_0::Models::CreativeWork
    Organization = Azure::CognitiveServices::NewsSearch::V1_0::Models::Organization
    ErrorResponse = Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorResponse
    ErrorCode = Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorCode
    ErrorSubCode = Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorSubCode
    Freshness = Azure::CognitiveServices::NewsSearch::V1_0::Models::Freshness
    SafeSearch = Azure::CognitiveServices::NewsSearch::V1_0::Models::SafeSearch
    TextFormat = Azure::CognitiveServices::NewsSearch::V1_0::Models::TextFormat
  end

  #
  # NewsSearchDataClass
  #
  class NewsSearchDataClass
    attr_reader :news_operations, :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::CognitiveServices::NewsSearch::V1_0::NewsSearchClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @news_operations = @client_0.news_operations

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/NewsSearch'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def response_base
      Azure::CognitiveServices::NewsSearch::V1_0::Models::ResponseBase
    end
    def error
      Azure::CognitiveServices::NewsSearch::V1_0::Models::Error
    end
    def query
      Azure::CognitiveServices::NewsSearch::V1_0::Models::Query
    end
    def news_article
      Azure::CognitiveServices::NewsSearch::V1_0::Models::NewsArticle
    end
    def search_results_answer
      Azure::CognitiveServices::NewsSearch::V1_0::Models::SearchResultsAnswer
    end
    def news
      Azure::CognitiveServices::NewsSearch::V1_0::Models::News
    end
    def image_object
      Azure::CognitiveServices::NewsSearch::V1_0::Models::ImageObject
    end
    def news_topic
      Azure::CognitiveServices::NewsSearch::V1_0::Models::NewsTopic
    end
    def article
      Azure::CognitiveServices::NewsSearch::V1_0::Models::Article
    end
    def identifiable
      Azure::CognitiveServices::NewsSearch::V1_0::Models::Identifiable
    end
    def response
      Azure::CognitiveServices::NewsSearch::V1_0::Models::Response
    end
    def answer
      Azure::CognitiveServices::NewsSearch::V1_0::Models::Answer
    end
    def thing
      Azure::CognitiveServices::NewsSearch::V1_0::Models::Thing
    end
    def trending_topics
      Azure::CognitiveServices::NewsSearch::V1_0::Models::TrendingTopics
    end
    def media_object
      Azure::CognitiveServices::NewsSearch::V1_0::Models::MediaObject
    end
    def video_object
      Azure::CognitiveServices::NewsSearch::V1_0::Models::VideoObject
    end
    def creative_work
      Azure::CognitiveServices::NewsSearch::V1_0::Models::CreativeWork
    end
    def organization
      Azure::CognitiveServices::NewsSearch::V1_0::Models::Organization
    end
    def error_response
      Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorResponse
    end
    def error_code
      Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorCode
    end
    def error_sub_code
      Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorSubCode
    end
    def freshness
      Azure::CognitiveServices::NewsSearch::V1_0::Models::Freshness
    end
    def safe_search
      Azure::CognitiveServices::NewsSearch::V1_0::Models::SafeSearch
    end
    def text_format
      Azure::CognitiveServices::NewsSearch::V1_0::Models::TextFormat
    end
  end
end
