# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	collections:
        	pages: -> @getCollection("html").findAllLive({isPage:true}).on "add", (model) ->  model.setMetaDefaults({layout:"default"})
		posts: -> @getCollection("post").findAllLive({isPage:true}).on "add", (model) ->  model.setMetaDefaults({layout:"default"})
	
	templateData:
		site:
			title: "NH"
getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
}

# Export the DocPad Configuration
module.exports = docpadConfig
