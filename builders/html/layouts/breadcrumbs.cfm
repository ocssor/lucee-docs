<cfparam name="args.crumbs" type="array" />
<cfparam name="args.page"   type="any" />

<cfif args.page.getId() neq "/index">
	<cfoutput>
		<ol class="breadcrumb" role="navigation">
			<li><a href="index.html">Home</a></li>
			<cfloop array="#args.crumbs#" item="pageId" index="i">
				<li>{{ref:#pageId#}}</li>
			</cfloop>
			<li>#args.page.getTitle()#</li>
		</ol>
	</cfoutput>
</cfif>