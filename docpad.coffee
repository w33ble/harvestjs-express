# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
  templateData:
    # Scripts
    getAssetPath: (env) ->
      if env in ['static']
        '/harvestjs-express/'
      else
        '/'

  collections:
    # Fetch in all documents that have pageOrder set within their meta data
    # Order by pageOrder: asc, title: asc
    lessons: ->
      @getCollection('documents').findAllLive(
        relativeOutDirPath:'lessons'
        pageOrder:
          $exists: true
        , [ pageOrder: 1]
      )
}

# Export the DocPad Configuration
module.exports = docpadConfig