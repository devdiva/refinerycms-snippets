$(document).ready(function (cms) {
	cms = cms || {};
	cms.plugin = cms.plugin || {};
	
	/**
	 * Class for handling everything between snippets and snippet types
	 */
	 cms.plugin.SnippetType = {
	 
	 	init: function () {
			this.content_holder = $('#snippet_type_picker');
			if (this.content_holder.length > 0) {
				this.bind();
			}
		}
	 }
	 
	 
	cms.plugin.SnippetType.init();
});
