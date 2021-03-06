<p>
	{{> ../user_name nick=whois.nick}}
	{{#if whois.whowas}} is offline, last information:{{/if}}
</p>

<dl class="whois">
{{#if whois.account}}
	<dt>Logged in as:</dt>
	<dd>{{whois.account}}</dd>
{{/if}}

	<dt>Host mask:</dt>
	<dd class="hostmask">{{whois.ident}}@{{whois.hostname}}</dd>

{{#if whois.actual_hostname}}
	<dt>Actual host:</dt>
	<dd class="hostmask"><a href="https://ipinfo.io/{{whois.actual_ip}}" target="_blank" rel="noopener">{{whois.actual_ip}}</a>{{#notEqual whois.actual_hostname whois.actual_ip}} ({{whois.actual_hostname}}){{/notEqual}}</dd>
{{/if}}

{{#if whois.real_name}}
	<dt>Real name:</dt>
	<dd>{{{parse whois.real_name}}}</dd>
{{/if}}

{{#if whois.registered_nick}}
	<dt>Registered nick:</dt>
	<dd>{{whois.registered_nick}}</dd>
{{/if}}

{{#if whois.channels}}
	<dt>Channels:</dt>
	<dd>{{{parse whois.channels}}}</dd>
{{/if}}

{{#if whois.modes}}
	<dt>Modes:</dt>
	<dd>{{whois.modes}}</dd>
{{/if}}

{{#if whois.special}}
	{{#each whois.special}}
		<dt>Special:</dt>
		<dd>{{this}}</dd>
	{{/each}}
{{/if}}

{{#if whois.operator}}
	<dt>Operator:</dt>
	<dd>{{whois.operator}}</dd>
{{/if}}

{{#if whois.helpop}}
	<dt>Available for help:</dt>
	<dd>Yes</dd>
{{/if}}

{{#if whois.bot}}
	<dt>Is a bot:</dt>
	<dd>Yes</dd>
{{/if}}

{{#if whois.away}}
	<dt>Away:</dt>
	<dd>{{{parse whois.away}}}</dd>
{{/if}}

{{#if whois.secure}}
	<dt>Secure connection:</dt>
	<dd>Yes</dd>
{{/if}}

{{#if whois.server}}
	<dt>Connected to:</dt>
	<dd>{{whois.server}} <i>({{whois.server_info}})</i></dd>
{{/if}}

{{#if whois.logonTime}}
	<dt>Connected at:</dt>
	<dd>{{localetime whois.logonTime}}</dd>
{{/if}}

{{#if whois.idle}}
	<dt>Idle since:</dt>
	<dd>{{localetime whois.idleTime}}</dd>
{{/if}}
</dl>
