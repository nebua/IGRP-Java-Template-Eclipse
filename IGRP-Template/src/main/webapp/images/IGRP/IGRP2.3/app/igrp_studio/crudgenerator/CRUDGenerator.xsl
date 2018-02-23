<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<xsl:output method="html" omit-xml-declaration="yes"
		encoding="utf-8" indent="yes" doctype-system="about:legacy-compat" />
	<xsl:template match="/">
		<html>
			<head>
				<xsl:call-template name="IGRP-head" />
				<link rel="stylesheet" type="text/css"
					href="{$path}/core/igrp/table/datatable/dataTables.bootstrap.css?v={$version}" />
				<link rel="stylesheet" type="text/css"
					href="{$path}/core/igrp/table/igrp.tables.css?v={$version}" />
				<link rel="stylesheet" type="text/css"
					href="{$path}/core/igrp/toolsbar/toolsbar.css?v={$version}" />
				<link rel="stylesheet" type="text/css"
					href="{$path}/plugins/select2/select2.min.css?v={$version}" />
				<link rel="stylesheet" type="text/css"
					href="{$path}/plugins/select2/select2.style.css?v={$version}" />
				<style />
			</head>
			<body class="{$bodyClass} sidebar-off">
				<xsl:call-template name="IGRP-topmenu" />
				<form method="POST" class="IGRP-form" name="formular_default"
					enctype="multipart/form-data">
					<div class="container-fluid">
						<div class="row">
							<xsl:call-template name="IGRP-sidebar" />
							<div class="col-sm-9 col-md-10 col-md-offset-2 col-sm-offset-3 main"
								id="igrp-contents">
								<div class="content">
									<div class="row row-msg">
										<div class="gen-column col-md-12">
											<div class="gen-inner">
												<xsl:apply-templates mode="igrp-messages"
													select="rows/content/messages" />
											</div>
										</div>
									</div>
									<div class="row " id="row-990a7c48">
										<div class="gen-column col-md-12">
											<div class="gen-inner">
												<xsl:if test="rows/content/form_1">
													<div class="box igrp-forms gen-container-item "
														data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-93"
														data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/containers/form/form.html"
														gen-class="" item-name="form_1">
														<xsl:call-template name="box-header">
															<xsl:with-param name="title"
																select="rows/content/form_1/@title" />
															<xsl:with-param name="collapsible" select="'false'" />
															<xsl:with-param name="collapsed" select="'false'" />
														</xsl:call-template>
														<div class="box-body">
															<div role="form">
																<xsl:apply-templates mode="form-hidden-fields"
																	select="rows/content/form_1/fields" />
																<xsl:if test="rows/content/form_1/fields/aplicacao">
																	<div class="col-sm-3 form-group  gen-fields-holder"
																		item-name="aplicacao" item-type="select" required="required"
																		data-genuitec-lp-enabled="false"
																		data-genuitec-file-id="wc1-189"
																		data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/fields/select/templates/select.form.html">
																		<label for="{rows/content/form_1/fields/aplicacao/@name}">
																			<xsl:value-of
																				select="rows/content/form_1/fields/aplicacao/label" />
																		</label>
																		<select class="form-control select2 IGRP_change"
																			id="form_1_aplicacao" name="{rows/content/form_1/fields/aplicacao/@name}"
																			required="required">
																			<xsl:call-template name="setAttributes">
																				<xsl:with-param name="field"
																					select="rows/content/form_1/fields/aplicacao" />
																			</xsl:call-template>
																			<xsl:for-each
																				select="rows/content/form_1/fields/aplicacao/list/option">
																				<option value="{value}" label="{text}">
																					<xsl:if test="@selected='true'">
																						<xsl:attribute name="selected">selected</xsl:attribute>
																					</xsl:if>
																					<span>
																						<xsl:value-of select="text" />
																					</span>
																				</option>
																			</xsl:for-each>
																		</select>
																	</div>
																</xsl:if>
																<xsl:if test="rows/content/form_1/fields/data_source">
																	<div class="col-sm-3 form-group  gen-fields-holder"
																		item-name="data_source" item-type="select" required="required"
																		data-genuitec-lp-enabled="false"
																		data-genuitec-file-id="wc1-189"
																		data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/fields/select/templates/select.form.html">
																		<label
																			for="{rows/content/form_1/fields/data_source/@name}">
																			<xsl:value-of
																				select="rows/content/form_1/fields/data_source/label" />
																		</label>
																		<select class="form-control select2 IGRP_change"
																			id="form_1_data_source" name="{rows/content/form_1/fields/data_source/@name}"
																			required="required">
																			<xsl:call-template name="setAttributes">
																				<xsl:with-param name="field"
																					select="rows/content/form_1/fields/data_source" />
																			</xsl:call-template>
																			<xsl:for-each
																				select="rows/content/form_1/fields/data_source/list/option">
																				<option value="{value}" label="{text}">
																					<xsl:if test="@selected='true'">
																						<xsl:attribute name="selected">selected</xsl:attribute>
																					</xsl:if>
																					<span>
																						<xsl:value-of select="text" />
																					</span>
																				</option>
																			</xsl:for-each>
																		</select>
																	</div>
																</xsl:if>
																<xsl:if test="rows/content/form_1/fields/schema">
																	<div class="col-sm-3 form-group  gen-fields-holder"
																		item-name="schema" item-type="select"
																		data-genuitec-lp-enabled="false"
																		data-genuitec-file-id="wc1-189"
																		data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/fields/select/templates/select.form.html">
																		<label for="{rows/content/form_1/fields/schema/@name}">
																			<xsl:value-of
																				select="rows/content/form_1/fields/schema/label" />
																		</label>
																		<select class="form-control select2 IGRP_change"
																			id="form_1_schema" name="{rows/content/form_1/fields/schema/@name}">
																			<xsl:call-template name="setAttributes">
																				<xsl:with-param name="field"
																					select="rows/content/form_1/fields/schema" />
																			</xsl:call-template>
																			<xsl:for-each
																				select="rows/content/form_1/fields/schema/list/option">
																				<option value="{value}" label="{text}">
																					<xsl:if test="@selected='true'">
																						<xsl:attribute name="selected">selected</xsl:attribute>
																					</xsl:if>
																					<span>
																						<xsl:value-of select="text" />
																					</span>
																				</option>
																			</xsl:for-each>
																		</select>
																	</div>
																</xsl:if>
																<xsl:if test="rows/content/form_1/fields/add_datasource">
																	<div class="form-group col-sm-3  gen-fields-holder"
																		item-name="add_datasource" item-type="link"
																		data-genuitec-lp-enabled="false"
																		data-genuitec-file-id="wc1-168"
																		data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/fields/link/templates/link.form.html">
																		<a href="{rows/content/form_1/fields/add_datasource/value}"
																			class="link btn btn-primary form-link" target="modal">
																			<i class="fa fa-th-large" />
																			<span>
																				<span>
																					<xsl:value-of
																						select="rows/content/form_1/fields/add_datasource/label" />
																				</span>
																			</span>
																		</a>
																	</div>
																</xsl:if>
															</div>
														</div>
														<xsl:apply-templates select="rows/content/form_1/tools-bar"
															mode="form-buttons" />
													</div>
												</xsl:if>
											</div>
										</div>
									</div>
									<div class="row " id="row-440af9b4">
										<div class="gen-column col-sm-9">
											<div class="gen-inner">
												<xsl:if test="rows/content/table_1">
													<div class="box box-table-contents gen-container-item "
														data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-127"
														data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/containers/table/table.html"
														gen-class="" item-name="table_1">
														<xsl:call-template name="box-header">
															<xsl:with-param name="title"
																select="rows/content/table_1/@title" />
															<xsl:with-param name="collapsible" select="'false'" />
															<xsl:with-param name="collapsed" select="'false'" />
														</xsl:call-template>
														<div class="box-body ">
															<xsl:apply-templates mode="form-hidden-fields"
																select="rows/content/table_1/fields" />
															<div class="table-contents-head">
																<div class="table-contents-inner"></div>
															</div>
															<div class="table-box">
																<div class="table-box-inner">
																	<table id="table_1" class="table table-striped igrp-data-table  "
																		exports="null">
																		<thead>
																			<tr>
																				<xsl:if test="rows/content/table_1/fields/check_table">
																					<th class="bs-checkbox gen-fields-holder" align="center"
																						data-genuitec-lp-enabled="false"
																						data-genuitec-file-id="wc1-150"
																						data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/fields/checkbox/templates/checkbox.table.th.html">
																						<span />
																						<input type="checkbox" class="IGRP_checkall"
																							check-rel="check_table" data-title=""
																							data-toggle="tooltip" />
																					</th>
																				</xsl:if>
																				<xsl:if test="rows/content/table_1/fields/table_name">
																					<th align="left" data-genuitec-lp-enabled="false"
																						data-genuitec-file-id="wc1-129"
																						data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/containers/table/th.html"
																						class=" gen-fields-holder">
																						<span>
																							<xsl:value-of
																								select="rows/content/table_1/fields/table_name/label" />
																						</span>
																					</th>
																				</xsl:if>
																			</tr>
																		</thead>
																		<tbody>
																			<xsl:for-each
																				select="rows/content/table_1/table/value/row[not(@total='yes')]">
																				<tr>
																					<xsl:apply-templates mode="context-param"
																						select="context-menu" />
																					<xsl:if test="check_table">
																						<td align="" data-row="{position()}"
																							data-title="{../../label/check_table}" class="bs-checkbox"
																							item-name="check_table" data-genuitec-lp-enabled="false"
																							data-genuitec-file-id="wc1-149"
																							data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/fields/checkbox/templates/checkbox.table.html">
																							<xsl:if test="check_table != '-0'">
																								<label class="">
																									<input type="checkbox" name="p_check_table"
																										value="{check_table}" check-rel="check_table">
																										<xsl:if test="check_table_check=check_table">
																											<xsl:attribute name="checked">checked</xsl:attribute>
																										</xsl:if>
																									</input>
																									<span class="slider round" />
																								</label>
																							</xsl:if>
																						</td>
																					</xsl:if>
																					<xsl:if test="table_name">
																						<td align="left" data-order="{table_name}"
																							data-row="{position()}" data-title="{../../../fields/table_name/label}"
																							class="text" item-name="table_name"
																							data-genuitec-lp-enabled="false"
																							data-genuitec-file-id="wc1-126"
																							data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/containers/table/field.html">
																							<span class="">
																								<xsl:value-of select="table_name" />
																							</span>
																						</td>
																					</xsl:if>
																				</tr>
																			</xsl:for-each>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												</xsl:if>
											</div>
										</div>
										<div class="gen-column col-sm-3">
											<div class="gen-inner">
												<xsl:if test="rows/content/toolsbar_1">
													<div class="toolsbar-holder default gen-container-item "
														gen-structure="toolsbar" gen-fields=".btns-holder&gt;a.btn"
														data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-132"
														data-genuitec-path="/IGRP/src/main/Webapp/images/IGRP/IGRP2.3/core/formgen/types/containers/toolsbar/toolsbar.html"
														gen-class="" item-name="toolsbar_1">
														<div class="btns-holder btn-group-lg btn-group-justified"
															role="group">
															<xsl:apply-templates select="rows/content/toolsbar_1"
																mode="gen-buttons">
																<xsl:with-param name="vertical" select="'true'" />
																<xsl:with-param name="outline" select="'false'" />
															</xsl:apply-templates>
														</div>
													</div>
												</xsl:if>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<xsl:call-template name="IGRP-bottom" />
				</form>
				<script type="text/javascript"
					src="{$path}/core/igrp/form/igrp.forms.js?v={$version}" />
				<script type="text/javascript"
					src="{$path}/core/igrp/table/datatable/jquery.dataTables.min.js?v={$version}" />
				<script type="text/javascript"
					src="{$path}/core/igrp/table/datatable/dataTables.bootstrap.min.js?v={$version}" />
				<script type="text/javascript"
					src="{$path}/core/igrp/table/igrp.table.js?v={$version}" />
				<script type="text/javascript"
					src="{$path}/plugins/select2/select2.full.min.js?v={$version}" />
				<script type="text/javascript"
					src="{$path}/plugins/select2/select2.init.js?v={$version}" />
				<script src="{$path}/core/igrp/IGRP.rules.class.js" />
				<script>
					$.IGRP.rules.set({"p_aplicacao":[{"name":"show
					table","events":"load","isTable":false,"conditions":{"rules":[{"condition":"less","value":"1","value2":"","patern":"","patern_custom":"","opposite":"1"}],"actions":[{"action":"hide","targets":"data_source,add_datasource","procedure":"","request_fields":"","msg_type":"","msg":""}]}}],"p_data_source":[{"name":"hide
					table e gerrar
					button","events":"load","isTable":false,"conditions":{"rules":[{"condition":"less","value":"1","value2":"","patern":"","patern_custom":"","opposite":"1"}],"actions":[{"action":"hide","targets":"schema,table_1,toolsbar_1","procedure":"","request_fields":"","msg_type":"","msg":""}]}},{"name":"hide
					add
					datasource","events":"load,change","isTable":false,"conditions":{"rules":[{"condition":"greater","value":"1","value2":"","patern":"","patern_custom":"","opposite":""}],"actions":[{"action":"hide","targets":"add_datasource","procedure":"","request_fields":"","msg_type":"","msg":""}]}}]},'actionsList');</script>
			</body>
		</html>
	</xsl:template>
	<xsl:include
		href="../../../xsl/tmpl/IGRP-functions.tmpl.xsl?v=1518712928221" />
	<xsl:include
		href="../../../xsl/tmpl/IGRP-variables.tmpl.xsl?v=1518712928221" />
	<xsl:include
		href="../../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=1518712928221" />
	<xsl:include href="../../../xsl/tmpl/IGRP-utils.tmpl.xsl?v=1518712928221" />
	<xsl:include
		href="../../../xsl/tmpl/IGRP-form-utils.tmpl.xsl?v=1518712928221" />
	<xsl:include
		href="../../../xsl/tmpl/IGRP-table-utils.tmpl.xsl?v=1518712928221" />
</xsl:stylesheet>
