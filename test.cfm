<cfset feeds = arrayNew(1)>

<!--- first an Atom feed --->
<cfset feeds[1] = "http://www.coldfusioncommunity.org/profiles/blog/feed?user=1slld88hh7gko&xn_auth=no">
<!--- then an rss feed --->
<cfset feeds[2] = "http://feeds.feedburner.com/RaymondCamdensColdfusionBlog">

<cfset agg = createObject("component", "aggregator")>

<!---
First example just shows basic aggregating.
--->

<cfset entries = agg.aggregate(feeds)>
<cfdump var="#entries#" label="All entries">

<!---
Now do a search
--->

<cfset entries = agg.search(feeds,"coldfusion")>
<cfdump var="#entries#" label="Search entries for 'coldfusion'">
