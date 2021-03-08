<cfset local.file.folder = "#getDirectoryFromPath(getCurrentTemplatePath())#files">
<cfset local.file.filename = 'test-png.png'>

<cfif StructKeyExists(url,"filename") && fileExists(local.file.folder & "/" & local.file.filename)>
  <cfset local.file.fileInfo = getFileInfo(local.file.folder & "/" & local.file.filename)>
  <cfset local.file.mimeType = getPageContext().getServletContext().getMimeType(local.file.folder & "/" & local.file.filename)>

  <cfheader name="Content-Disposition" value="attachment; filename=#local.file.filename#">
  <cfheader name="Expires" value="#Now()#">
  <cfheader name="Content-Length" value="#local.file.fileInfo.size#">
  <cfcontent type="#local.file.mimeType#" file="#local.file.folder#/#local.file.filename#" deletefile="No">
<cfelse>
	<p>File not found. Check path and try again.</p>
</cfif>
