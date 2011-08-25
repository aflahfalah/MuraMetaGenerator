<cfsilent>
<!---

This file is part of MuraMetaGenerator TM
(c) Stephen J. Withington, Jr. | www.stephenwithington.com

CAREFULLY READ THE ENCLOSED LICENSE AGREEMENT (plugin/license.htm). BY USING THIS SOFTWARE, YOU ARE CONSENTING TO BE BOUND BY AND ARE BECOMING A PARTY TO THIS AGREEMENT. IF YOU DO NOT AGREE TO ALL OF THE TERMS OF THIS AGREEMENT, THEN DO NOT USE THIS SOFTWARE, AND, IF APPLICABLE, RETURN THIS PRODUCT TO THE PLACE OF PURCHASE FOR A FULL REFUND.

--->
</cfsilent>
<cfinclude template="plugin/config.cfm" />
<cfsavecontent variable="body">
<cfoutput>
<h2>MuraMetaGenerator&trade;</h2>
<p><em>Version: #request.pluginConfig.getVersion()#<br />
Author: <a href="http://stephenwithington.com" target="_blank">Steve Withington</a></em></p>

<h3>End User License Agreement (EULA)</h3>
<p><em><a href="plugin/license.htm" target="_blank">View Printer-Friendly Version &gt;</a></em></p>
<div class="notice">
<p><textarea readonly="readonly" name="EULA" id="EULA" label="End User License Agreement (EULA)" cols="97" rows="10"><cfinclude template="plugin/license.txt" /></textarea></p>
</div>

<h3>How Do I Use This?</h3>
<p>On the plugin's Settings page, make sure you select the site(s) you wish to have your Meta Keywords and Meta Descriptions auto-generated.</p>
<p>Also, in the 'Meta Keywords to Ignore' TextArea, enter a comma-separated list of keywords you do NOT wish to include in your listing of keywords. A generic listing of keywords has been entered with words such as 'a,an,and,the' and so forth. If you wish to index these common words (even though search engines usually ignore them anyway), then simply leave this field blank.</p>
<p>Most Mura installations use a file located at <strong>/{siteID}/includes/themes/{themeName, i.e., 'merced'}/templates/inc/html_head.cfm</strong>. In this file, by default the following lines of code are typcially found:</p>
<div class="notice">
<p> &lt;meta name=&quot;description&quot; content=&quot;##HTMLEditFormat(renderer.getmetadesc())##&quot; /&gt;<br>
&lt;meta name=&quot;keywords&quot; content=&quot;##HTMLEditFormat(renderer.getmetakeywords())##&quot; /&gt;</p>
</div>
<p>You can either leave these lines of code in place or simply remove them if using this plugin.</p>

<h3>How Does This Work?</h3>
<p>If you already have a Description and/or Keywords entered via the 'Meta Data' tab when adding and/or editing an existing page, then the values entered there will be used. Otherwise, the MuraMetaGenerator&trade; will analyze the page title, and primary content of the page to automatically generate unique keywords and a description.</p>

<h3>Why Should I Use This?</h3>
<p>There could be a number of reasons why someone would want to use MuraMetaGenerator&trade;. One of the best reasons is that most Authors and Editors either don't have the time and/or the knowledge of what information to put in these fields to begin with.</p>
<p>Also, since search engines change their algorithms daily and actually rely less and less on meta keywords and meta descriptions, why not spend your time going through the actual content of your pages and making sure your content contains the information you want indexed by search engines? After all, MuraMetaGenerator&trade; derives its information based on the actual page content which means you'll be following 'White Hat' Search Engine Optimization (SEO) techniques so your search engines rankings will most likely grow organically over time.</p>
<p>So go ahead and let MuraMetaGenerator&trade; do it for you!</p>

<h3>Requirements</h3>
<div class="notice">
<ul style="padding:0 2em;">
	<li>ColdFusion 8+ or Railo 3.1.2+ <em>(this has NOT been tested on Open BlueDragon)</em></li>
	<li>Mura 5.2+</li>
</ul>
</div>
<h3>Need help?</h3>
<p>Catch me on the <a href="http://www.getmura.com/forum/" target="_blank">Mura CMS forums</a>, contact me through my site at <a href="http://www.stephenwithington.com" target="_blank">www.stephenwithington.com</a>, or via email at steve [at] stephenwithington [dot] com.</p>
<p>Cheers!</p>
</cfoutput>
</cfsavecontent>
<cfoutput>
	#application.pluginManager.renderAdminTemplate(body=body,pageTitle=request.pluginConfig.getName())#
</cfoutput>