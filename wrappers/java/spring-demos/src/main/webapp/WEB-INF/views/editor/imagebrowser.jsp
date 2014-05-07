<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<c:url value="/editor/imagebrowser/read" var="transportReadUrl" />
<c:url value="/editor/imagebrowser/thumbnail" var="transportThumbnailUrl" />
<c:url value="/editor/imagebrowser/upload" var="transportUploadUrl" />
<c:url value="/editor/imagebrowser/create" var="transportCreateUrl" />
<c:url value="/editor/imagebrowser/destroy" var="transportDestroyUrl" />
<c:url value="/resources/shared/imagebrowser/{0}" var="transportImageUrl" />


<kendo:editor name="editor" style="width:740px;height:440px">
	<kendo:editor-tools>
    	<kendo:editor-tool name="insertImage"/>
  	</kendo:editor-tools>
	<kendo:editor-imageBrowser>
		<kendo:editor-imageBrowser-transport 
			read="${ transportReadUrl }" 
			thumbnailUrl="${transportThumbnailUrl}"
			imageUrl="${ transportImageUrl }"
			uploadUrl="${ transportUploadUrl }">
			<kendo:editor-imageBrowser-transport-create type="POST" url="${ transportCreateUrl }"/>
			<kendo:editor-imageBrowser-transport-destroy type="POST" url="${ transportDestroyUrl }"/>
		</kendo:editor-imageBrowser-transport>		
	</kendo:editor-imageBrowser>
    <kendo:editor-value>
         &lt;p&gt;
               &lt;img src="../../content/web/editor/kendo-ui-web.png" alt="Editor for ASP.NET MVC logo" style="display:block;margin-left:auto;margin-right:auto;" /&gt;
            &lt;/p&gt;
            &lt;p&gt;
                Kendo UI Editor allows your users to edit HTML in a familiar, user-friendly way.&lt;br /&gt;
                In this version, the Editor provides the core HTML editing engine, which includes basic text formatting, hyperlinks, lists,
                and image handling. The widget &lt;strong&gt;outputs identical HTML&lt;/strong&gt; across all major browsers, follows
                accessibility standards and provides API for content manipulation.
            &lt;/p&gt;
            &lt;p&gt;Features include:&lt;/p&gt;
            &lt;ul&gt;
                &lt;li&gt;Text formatting &amp; alignment&lt;/li&gt;
                &lt;li&gt;Bulleted and numbered lists&lt;/li&gt;
                &lt;li&gt;Hyperlink and image dialogs&lt;/li&gt;
                &lt;li&gt;Cross-browser support&lt;/li&gt;
                &lt;li&gt;Identical HTML output across browsers&lt;/li&gt;
                &lt;li&gt;Gracefully degrades to a &lt;code&gt;textarea&lt;/code&gt; when JavaScript is turned off&lt;/li&gt;
            &lt;/ul&gt;
            &lt;p&gt;
                Read &lt;a href="http://docs.telerik.com/kendo-ui"&gt;more details&lt;/a&gt; or send us your
                &lt;a href="http://www.telerik.com/forums"&gt;feedback&lt;/a&gt;!
            &lt;/p&gt;
    </kendo:editor-value>    
</kendo:editor>

<demo:footer />