module UserService
  class ElasticSearch
    def initialize
      @client = Elasticsearch::Client.new(
        cloud_id: 'e11b4f2d84aa403cb0905f0173691c92:dXMtY2VudHJhbDEuZ2NwLmNsb3VkLmVzLmlvJGM3MmI0OWM0MzA1MzQyNTU5NzNkZTgyZmI5MDM2OGFiJGJhMmM0ZDg4ZWJlODQ3MTI4YjI5NDA0MmQ0Y2Q1YzRl',
        api_key: 'eU41V2w0MEI2cHA2V1ZldU1ZOTc6U3VINER6MEFTY2lCVzVMZUc3WExfZw==',
        host: 'https://c72b49c430534255973de82fb90368ab.us-central1.gcp.cloud.es.io:443'
      )
    end

    def client
      @client
    end
    # https://c72b49c430534255973de82fb90368ab.us-central1.gcp.cloud.es.io:443
  end
end
