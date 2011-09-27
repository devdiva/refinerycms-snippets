module Admin
  class SnippetTypesController < Admin::BaseController
  	
  	crudify :snippet_type, :xhr_paging => true
  	
  	def create
  	  if (@snippet_type = SnippetType.create(params[:snippet_type])).valid?
  	    (request.xhr? ? flash.now : flash).notice = t(
          'refinery.crudify.created',
          :what => "#{@snippet_type.name}"
        )
        unless request.xhr?
          redirect_to (params[:continue_editing] =~ /1/ ?
          edit_admin_snippet_path(@snippet) : admin_snippets_url)
        else
          response = Hash.new
          response['redirect'] = edit_admin_snippet_path(@snippet) if params[:continue_editing]
          render :json => response
        end
  	  else
  	    unless request.xhr?
          render :action => 'new'
        else
#           html_snippets = Hash.new
#           html_snippets['flash_container'] = render_to_string(:partial => "/shared/admin/error_messages",
#                                                               :locals => {
#                                                                 :object => @snippet_type,
#                                                                 :include_object_name => true
#                                                               })
#           render :json => {'snippets' => html_snippets}
        end
  	  end
  	end
  	
  	def add
  	end
  	
  	def remove
  	end
  	
  	
  end
end
