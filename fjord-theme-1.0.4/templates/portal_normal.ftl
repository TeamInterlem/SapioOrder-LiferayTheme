<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">
	<head>
		<title>${the_title} - ${company_name}</title>
		
		<meta content="initial-scale=1.0, width=device-width" name="viewport" />
		<script type="text/javascript" src="${javascript_folder}/jquery-3.1.1.js"></script>

		<@liferay_util["include"] page=top_head_include />
	</head>

	<body class="${css_class}">
		<@liferay_ui["quick-access"] contentId="#main-content" />

		<@liferay_util["include"] page=body_top_include />

		<@liferay.control_menu />

		<div id="wrapper">
			<header id="banner" role="banner">
				<div class="container-fluid-1280">
					<nav class="navbar">
						<div class="navbar-header">
							<a class="${logo_css_class}" href="${site_default_url}" rel="home" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
								<img alt="${logo_description}" height="${company_logo_height}" src="${site_logo}" width="${company_logo_width}" />
							</a>
							<#if show_site_name>
								<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
									${site_name}
								</span>
							</#if>
							
							<button class="collapsed navbar-toggle" data-target="#navigationCollapse" data-toggle="collapse" type="button">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							
							<!--<#if has_navigation && is_setup_complete>
								<#include full_templates_path + "/navigation.ftl">
							</#if>-->
						</div>
					</nav>
				</div>
			</header>
			<div class="bottom-nav">
				<div class="min-menu" id="min-menu">
					<span class="min-menu-text">MENU</span>
				</div>
				<div class="cart-button" id="cart-button">
					<svg class="cart-icon" width="20.000000pt" height="20.000000pt" viewBox="0 0 300.000000 300.000000" preserveAspectRatio="xMidYMid meet">
						<g transform="translate(0.000000,300.000000) scale(0.100000,-0.100000)" fill="#000000" stroke="none">
							<path d="M54 2896 c-30 -30 -34 -40 -34 -86 0 -46 4 -56 34 -86 l34 -34 165 0
							c94 0 168 -4 172 -9 3 -6 109 -358 236 -783 l230 -773 -27 -59 c-61 -135 -53
							-253 23 -331 86 -89 174 -102 491 -76 463 39 681 52 977 58 226 4 307 9 327
							19 82 42 56 162 -38 180 -88 16 -702 -12 -1234 -57 -246 -21 -330 -21 -370 1
							-19 10 -22 18 -17 56 2 25 7 47 10 50 3 3 374 50 824 105 507 61 830 104 850
							113 18 9 39 26 47 38 17 27 226 1099 226 1161 0 23 -7 53 -16 65 -38 54 15 52
							-1148 52 l-1075 0 -26 88 c-83 276 -87 286 -117 314 l-30 28 -240 0 -240 0
							-34 -34z m1374 -843 l-3 -198 -239 -3 c-132 -1 -243 1 -248 6 -7 7 -118 366
							-118 384 0 4 137 8 305 8 l305 0 -2 -197z m630 0 l-3 -198 -252 -3 -253 -2 0
							200 0 200 255 0 255 0 -2 -197z m646 170 c-3 -16 -20 -104 -38 -198 l-33 -170
							-229 0 -229 0 -3 198 -2 197 270 0 270 0 -6 -27z m-1274 -718 c0 -129 -3 -235
							-7 -235 -5 -1 -73 -9 -153 -19 -80 -10 -148 -16 -151 -12 -4 5 -117 375 -147
							484 -4 16 12 17 227 17 l231 0 0 -235z m625 35 l0 -195 -220 -27 c-121 -15
							-235 -27 -252 -27 l-33 -1 0 225 0 225 253 -2 252 -3 0 -195z m550 168 c-4
							-18 -19 -94 -33 -168 l-27 -135 -175 -22 c-96 -12 -181 -22 -187 -23 -10 0
							-13 43 -13 183 0 101 3 187 7 190 3 4 103 7 220 7 l214 0 -6 -32z"/>
							
							<path d="M947 536 c-101 -28 -177 -129 -177 -235 1 -219 250 -329 413 -182 22
							20 48 54 58 76 26 56 25 156 -2 211 -51 106 -177 162 -292 130z"/>
							
							<path d="M2375 541 c-218 -53 -263 -344 -70 -456 120 -71 272 -27 341 97 75
							136 3 308 -147 352 -56 17 -77 18 -124 7z"/>
						</g>
					</svg>
				</div>
				<div class="hidecontrol" id="hidecontrol"></div>
			</div>
			
			<main id="content" role="main" style="margin: 15px;">
				<h1 class="hide-accessible">${the_title}</h1>

				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}

					${portletDisplay.setTitle(the_title)}

					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>
			</main>

		</div>

		<@liferay_util["include"] page=body_bottom_include />

		<@liferay_util["include"] page=bottom_include />
	</body>
</html>