<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Cypress Download Test</title>
</head>

<body>
<h1>Cypress Download File Test</h1>
<p>Downloading dynamically generated file fails when Cypress does not detect page load <a href="https://github.com/cypress-io/cypress/issues/14789">#14789</a></p>
<p>This example is using a dynamically delivered file using the ColdFusion <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-tags/tags-c/cfcontent.html">cfcontent</a> tag.</p>
<p>This is a dynamic page <cfoutput>#now()#</cfoutput>.</p>
<br />
<h3>Issue</h3>
<p>Expected behavior:  File is downloaded, Cypress does whatever assertion is needed on that file and stops.</p>
<p>Actual behavior:  Cypress successfully clicks link, the file is downloaded but Cypress then hangs (<i>(page load)
--waiting for new page to load--</i>) and eventually times out.</p>
<br />
<p>Download: <a href="download.cfm?filename=test-png.png" id="download">test-png.png</a></p>
<br />
</body>
</html>




