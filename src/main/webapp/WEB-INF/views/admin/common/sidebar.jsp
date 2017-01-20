<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar      h-sidebar                navbar-collapse collapse          ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!-- /.sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li class="hover highlight">
						<a href="index.html">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"> <spring:message code="admin.dashboard.dashboard" /> </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="active open hover highlight">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								<spring:message code="admin.dashboard.menu" />
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="active open hover">
								<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-left"></i>

									Layouts
									<b class="arrow fa fa-angle-down"></b>
								</a>

								<b class="arrow"></b>

								<ul class="submenu">
									<li class="active hover">
										<a href="top-menu.html">
											<i class="menu-icon fa fa-caret-left"></i>
											Top Menu
										</a>

										<b class="arrow"></b>
									</li>

									<li class="hover highlight">
										<a href="two-menu-1.html">
											<i class="menu-icon fa fa-caret-left"></i>
											Two Menus 1
										</a>

										<b class="arrow"></b>
									</li>

									<li class="hover highlight">
										<a href="two-menu-2.html">
											<i class="menu-icon fa fa-caret-left"></i>
											Two Menus 2
										</a>

										<b class="arrow"></b>
									</li>

									<li class="hover highlight">
										<a href="mobile-menu-1.html">
											<i class="menu-icon fa fa-caret-left"></i>
											Default Mobile Menu
										</a>

										<b class="arrow"></b>
									</li>

									<li class="hover highlight">
										<a href="mobile-menu-2.html">
											<i class="menu-icon fa fa-caret-left"></i>
											Mobile Menu 2
										</a>

										<b class="arrow"></b>
									</li>

									<li class="hover highlight">
										<a href="mobile-menu-3.html">
											<i class="menu-icon fa fa-caret-left"></i>
											Mobile Menu 3
										</a>

										<b class="arrow"></b>
									</li>
								</ul>
							</li>

							<li class="hover highlight">
								<a href="typography.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Typography
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="elements.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Elements
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="buttons.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Buttons &amp; Icons
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="content-slider.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Content Sliders
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="treeview.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Treeview
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="jquery-ui.html">
									<i class="menu-icon fa fa-caret-left"></i>
									jQuery UI
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="nestable-list.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Nestable Lists
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-left"></i>

									Three Level Menu
									<b class="arrow fa fa-angle-down"></b>
								</a>

								<b class="arrow"></b>

								<ul class="submenu">
									<li class="hover highlight">
										<a href="#">
											<i class="menu-icon fa fa-leaf green"></i>
											Item #1
										</a>

										<b class="arrow"></b>
									</li>

									<li class="hover highlight">
										<a href="#" class="dropdown-toggle">
											<i class="menu-icon fa fa-pencil orange"></i>

											4th level
											<b class="arrow fa fa-angle-down"></b>
										</a>

										<b class="arrow"></b>

										<ul class="submenu">
											<li class="hover highlight">
												<a href="#">
													<i class="menu-icon fa fa-plus purple"></i>
													Add Product
												</a>

												<b class="arrow"></b>
											</li>

											<li class="hover highlight">
												<a href="#">
													<i class="menu-icon fa fa-eye pink"></i>
													View Products
												</a>

												<b class="arrow"></b>
											</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</li>

					<li class="hover highlight">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> <spring:message code="admin.dashboard.page" /> </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="hover highlight">
								<a href="tables.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Simple &amp; Dynamic
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="jqgrid.html">
									<i class="menu-icon fa fa-caret-left"></i>
									jqGrid plugin
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="hover highlight">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> <spring:message code="admin.dashboard.user" /> </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="hover highlight">
								<a href="form-elements.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Form Elements
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="form-elements-2.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Form Elements 2
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="form-wizard.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Wizard &amp; Validation
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="wysiwyg.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Wysiwyg &amp; Markdown
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="dropzone.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Dropzone File Upload
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="hover highlight">
						<a href="widgets.html">
							<i class="menu-icon fa fa-list-alt"></i>
							<span class="menu-text"> <spring:message code="admin.dashboard.subject" /> </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="hover highlight">
						<a href="calendar.html">
							<i class="menu-icon fa fa-calendar"></i>

							<span class="menu-text">
								<spring:message code="admin.dashboard.messages" />
								<span class="badge badge-transparent tooltip-error" title="2 Important Events">
									<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
								</span>
							</span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="hover highlight">
						<a href="gallery.html">
							<i class="menu-icon fa fa-picture-o"></i>
							<span class="menu-text"> <spring:message code="admin.dashboard.resource" /> </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="hover highlight">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-tag"></i>
							<span class="menu-text">
							 <spring:message code="admin.dashboard.setting" />
							 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="hover highlight">
								<a href="profile.html">
									<i class="menu-icon fa fa-caret-left"></i>
									User Profile
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="inbox.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Inbox
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="pricing.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Pricing Tables
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="invoice.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Invoice
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="timeline.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Timeline
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="search.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Search Results
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="email.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Email Templates
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover highlight">
								<a href="login.html">
									<i class="menu-icon fa fa-caret-left"></i>
									Login &amp; Register
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>


				</ul><!-- /.nav-list -->
			</div>