<?xml version="1.0" encoding="UTF-8"?> <!DOCTYPE StyledLayerDescriptor [ 		<!ENTITY forest "c5ddaa"> 		<!ENTITY grass "dfedd0"> 		<!ENTITY cemetery "c5ddaa"> 		<!ENTITY vineyard "c5ddaa"> 		<!ENTITY beach "f4ed9f"> 		<!ENTITY residential "efebe6"> 		<!ENTITY background "F7F5E9"> 		<!ENTITY industrial "DFDED8"> 		<!ENTITY attraction "f7eaf9"> 		<!ENTITY glacier "e8e7ff"> 		<!ENTITY interested_area "f9f4ff"> 		<!ENTITY sport_area "fce5e8"> 		<!ENTITY water "95C5DD"> 		<!ENTITY building "e5e2d3"> 		<!ENTITY building_public "dbcfc5"> 		<!ENTITY building_edge "dbcfc5"> 		<!ENTITY forbidden "9b0f0f"> 		<!ENTITY boundary_dark "8e8e8e"> 		<!ENTITY boundary_light "FFFFFF"> 		<!ENTITY font_family "Noto Sans"> 		<!ENTITY railway_light "FFFFFF"> 		<!ENTITY railway_dark "cccccc"> 		<!ENTITY contour_dark "876A4E"> 		<!ENTITY contour_light "F7F5E9"> 		<!ENTITY outline "CCCCCC"> 		<!ENTITY dem_1 "bfe2bb"> 		<!ENTITY dem_2 "b3d18a"> 		<!ENTITY dem_3 "b0db81"> 		<!ENTITY dem_4 "d7de80"> 		<!ENTITY dem_5 "EDEEB5"> 		<!ENTITY dem_6 "EEDDBB"> 		<!ENTITY dem_7 "E8C8A8"> 		<!ENTITY dem_8 "DDB192"> 		<!ENTITY dem_9 "C19272"> 		<!ENTITY dem_10 "AA7959"> 		<!ENTITY dem_11 "996c50"> 		<!ENTITY dem_12 "8b6248"> 		<!ENTITY name "name"> 		<!ENTITY L_highway_back "c4c3c2"> 		<!ENTITY L_motorway "FFFFFF"> 		<!ENTITY L_trunk "FFFFFF"> 		<!ENTITY L_primary "FFFFFF"> 		<!ENTITY L_secondary "FFFFFF"> 		<!ENTITY L_tertiary "FFFFFF"> 		<!ENTITY L_road "FFFFFF"> 		<!ENTITY L_graticules "2a4870"> 		<!ENTITY pattern_fill "adadad"> 		<!ENTITY Symbol_font "Mapkey Icons"> 		<!ENTITY Symbol_fill "8e8e8e"> 		<!ENTITY Symbol_halo "FFFFFF"> 		<!ENTITY Symbol_halo_size "1"> 		<!ENTITY Symbol_scale "1"> 		<!ENTITY T_place_1 "686868"> 		<!ENTITY T_place_1_halo "FFFFFF"> 		<!ENTITY T_place_2 "8e8e8e"> 		<!ENTITY T_place_2_halo "FFFFFF"> 		<!ENTITY T_road "686868"> 		<!ENTITY T_road_halo "FFFFFF"> 		<!ENTITY T_poi "686868"> 		<!ENTITY T_poi_halo "FFFFFF"> 		<!ENTITY T_water "95C5DD"> 		<!ENTITY T_water_halo "FFFFFF"> 		<!ENTITY T_scale_poi "1"> 		<!ENTITY T_scale_road "1"> 		<!ENTITY T_scale_place "1"> 		<!ENTITY L_graticules "2a4870"> 		<!ENTITY render ""> 		<!ENTITY version "3"> 		]>



<StyledLayerDescriptor version="1.0.0" 
		xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
		xmlns="http://www.opengis.net/sld" 
		xmlns:ogc="http://www.opengis.net/ogc" 
		xmlns:xlink="http://www.w3.org/1999/xlink" 
		xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<!-- a named layer is the basic building block of an sld document -->

	<NamedLayer>
		<Name>Default Line</Name>
		<UserStyle>
			<FeatureTypeStyle>
				<Rule>
					<ogc:Filter>
						<ogc:PropertyIsNotEqualTo>
							<ogc:Function name="strMatches"><ogc:Function name="env"><ogc:Literal>render</ogc:Literal><ogc:Literal>&render;</ogc:Literal></ogc:Function><ogc:Literal>.*overlay-base.*</ogc:Literal>		</ogc:Function><ogc:Literal>false</ogc:Literal>
						</ogc:PropertyIsNotEqualTo>
					</ogc:Filter>
				<!--
					<PolygonSymbolizer>
						<Fill><GraphicFill> <Graphic><Mark><WellKnownName>circle</WellKnownName>
							<Fill><CssParameter name="fill">#454545</CssParameter></Fill>
							</Mark><Size>10</Size></Graphic></GraphicFill></Fill>
						<VendorOption name="composite">overlay</VendorOption>
					</PolygonSymbolizer>

					<PolygonSymbolizer>
						<Fill><GraphicFill> <Graphic><Mark><WellKnownName>circle</WellKnownName>
							<Fill><CssParameter name="fill">#454545</CssParameter></Fill>
						</Mark><Size>4</Size></Graphic></GraphicFill></Fill>
						<VendorOption name="composite">screen</VendorOption>
					</PolygonSymbolizer>

					<PolygonSymbolizer>
						<Fill><GraphicFill> <Graphic><Mark><WellKnownName>circle</WellKnownName>
							<Fill><CssParameter name="fill">#454545</CssParameter></Fill>
						</Mark><Size>4</Size></Graphic></GraphicFill></Fill>
						<VendorOption name="composite">color-burn,0.4</VendorOption>
					</PolygonSymbolizer>
				-->

					<PolygonSymbolizer>
						<Fill><GraphicFill><Graphic>
							<ExternalGraphic>
								<OnlineResource xlink:type="simple" xlink:href="pattern/metal_1.jpg" />
								<Format>image/png</Format>
							</ExternalGraphic><Size>500</Size>
							</Graphic></GraphicFill></Fill>
						<VendorOption name="composite">multiply,0.4</VendorOption>
					</PolygonSymbolizer>
				</Rule>
			</FeatureTypeStyle>


			<FeatureTypeStyle>
				<Rule>
					<ogc:Filter>
						<ogc:PropertyIsNotEqualTo>
							<ogc:Function name="strMatches"><ogc:Function name="env"><ogc:Literal>render</ogc:Literal><ogc:Literal>&render;</ogc:Literal></ogc:Function><ogc:Literal>.*overlay-paper.*</ogc:Literal>		</ogc:Function><ogc:Literal>false</ogc:Literal>
						</ogc:PropertyIsNotEqualTo>
					</ogc:Filter>

					<PolygonSymbolizer>
						<Fill><GraphicFill><Graphic>
							<ExternalGraphic>
								<OnlineResource xlink:type="simple" xlink:href="pattern/paper_3.jpg" />
								<Format>image/png</Format>
							</ExternalGraphic><Size>250</Size>
						</Graphic></GraphicFill></Fill>

					</PolygonSymbolizer>
				</Rule>
				<VendorOption name="composite">multiply,0.3</VendorOption>
			</FeatureTypeStyle>

			<FeatureTypeStyle>
				<Rule>
					<ogc:Filter>
						<ogc:PropertyIsNotEqualTo>
							<ogc:Function name="strMatches"><ogc:Function name="env"><ogc:Literal>render</ogc:Literal><ogc:Literal>&render;</ogc:Literal></ogc:Function><ogc:Literal>.*overlay-metal.*</ogc:Literal>		</ogc:Function><ogc:Literal>false</ogc:Literal>
						</ogc:PropertyIsNotEqualTo>
					</ogc:Filter>

					<PolygonSymbolizer>
						<Fill><GraphicFill><Graphic>
							<ExternalGraphic>
								<OnlineResource xlink:type="simple" xlink:href="pattern/metal_1.jpg" />
								<Format>image/png</Format>
							</ExternalGraphic><Size>450</Size>
						</Graphic></GraphicFill></Fill>
						<VendorOption name="composite">multiply,0.5</VendorOption>
					</PolygonSymbolizer>
				</Rule>
			</FeatureTypeStyle>

			<FeatureTypeStyle>
				<Rule>
					<ogc:Filter>
						<ogc:PropertyIsNotEqualTo>
							<ogc:Function name="strMatches"><ogc:Function name="env"><ogc:Literal>render</ogc:Literal><ogc:Literal>&render;</ogc:Literal></ogc:Function><ogc:Literal>.*overlay-wood.*</ogc:Literal>		</ogc:Function><ogc:Literal>false</ogc:Literal>
						</ogc:PropertyIsNotEqualTo>
					</ogc:Filter>

					<PolygonSymbolizer>
						<Fill><GraphicFill><Graphic>
							<ExternalGraphic>
								<OnlineResource xlink:type="simple" xlink:href="pattern/wood_3.jpg" />
								<Format>image/png</Format>
							</ExternalGraphic><Size>500</Size>
						</Graphic></GraphicFill></Fill>
						<VendorOption name="composite">multiply,0.3</VendorOption>
					</PolygonSymbolizer>
				</Rule>
			</FeatureTypeStyle>

			<FeatureTypeStyle>
				<Rule>
					<ogc:Filter>
						<ogc:PropertyIsNotEqualTo>
							<ogc:Function name="strMatches"><ogc:Function name="env"><ogc:Literal>render</ogc:Literal><ogc:Literal>&render;</ogc:Literal></ogc:Function><ogc:Literal>.*overlay-crazy.*</ogc:Literal>		</ogc:Function><ogc:Literal>false</ogc:Literal>
						</ogc:PropertyIsNotEqualTo>
					</ogc:Filter>

					<PolygonSymbolizer>
						<Fill><GraphicFill><Graphic>
							<ExternalGraphic>
								<OnlineResource xlink:type="simple" xlink:href="pattern/dots-color.jpg" />
								<Format>image/png</Format>
							</ExternalGraphic><Size>20</Size>
						</Graphic></GraphicFill></Fill>
						<VendorOption name="composite">multiply,0.3</VendorOption>
					</PolygonSymbolizer>
				</Rule>
			</FeatureTypeStyle>


		</UserStyle>
	</NamedLayer>
</StyledLayerDescriptor>