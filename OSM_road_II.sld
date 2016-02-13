<?xml version="1.0" encoding="UTF-8"?> <!DOCTYPE StyledLayerDescriptor [ 		<!ENTITY forest "c5ddaa"> 		<!ENTITY grass "dfedd0"> 		<!ENTITY cemetery "c5ddaa"> 		<!ENTITY vineyard "c5ddaa"> 		<!ENTITY beach "f4ed9f"> 		<!ENTITY residential "efebe6"> 		<!ENTITY background "F7F5E9"> 		<!ENTITY industrial "DFDED8"> 		<!ENTITY attraction "f7eaf9"> 		<!ENTITY glacier "e8e7ff"> 		<!ENTITY interested_area "f9f4ff"> 		<!ENTITY sport_area "fce5e8"> 		<!ENTITY water "95C5DD"> 		<!ENTITY building "e5e2d3"> 		<!ENTITY building_public "dbcfc5"> 		<!ENTITY building_edge "dbcfc5"> 		<!ENTITY forbidden "9b0f0f"> 		<!ENTITY boundary_dark "8e8e8e"> 		<!ENTITY boundary_light "FFFFFF"> 		<!ENTITY font_family "Noto Sans"> 		<!ENTITY railway_light "FFFFFF"> 		<!ENTITY railway_dark "cccccc"> 		<!ENTITY contour_dark "876A4E"> 		<!ENTITY contour_light "F7F5E9"> 		<!ENTITY outline "CCCCCC"> 		<!ENTITY dem_1 "bfe2bb"> 		<!ENTITY dem_2 "b3d18a"> 		<!ENTITY dem_3 "b0db81"> 		<!ENTITY dem_4 "d7de80"> 		<!ENTITY dem_5 "EDEEB5"> 		<!ENTITY dem_6 "EEDDBB"> 		<!ENTITY dem_7 "E8C8A8"> 		<!ENTITY dem_8 "DDB192"> 		<!ENTITY dem_9 "C19272"> 		<!ENTITY dem_10 "AA7959"> 		<!ENTITY dem_11 "996c50"> 		<!ENTITY dem_12 "8b6248"> 		<!ENTITY name "name"> 		<!ENTITY L_highway_back "c4c3c2"> 		<!ENTITY L_motorway "FFFFFF"> 		<!ENTITY L_trunk "FFFFFF"> 		<!ENTITY L_primary "FFFFFF"> 		<!ENTITY L_secondary "FFFFFF"> 		<!ENTITY L_tertiary "FFFFFF"> 		<!ENTITY L_road "FFFFFF"> 		<!ENTITY L_graticules "2a4870"> 		<!ENTITY pattern_fill "adadad"> 		<!ENTITY Symbol_font "Mapkey Icons"> 		<!ENTITY Symbol_fill "8e8e8e"> 		<!ENTITY Symbol_halo "FFFFFF"> 		<!ENTITY Symbol_halo_size "1"> 		<!ENTITY Symbol_scale "1"> 		<!ENTITY T_place_1 "686868"> 		<!ENTITY T_place_1_halo "FFFFFF"> 		<!ENTITY T_place_2 "8e8e8e"> 		<!ENTITY T_place_2_halo "FFFFFF"> 		<!ENTITY T_road "686868"> 		<!ENTITY T_road_halo "FFFFFF"> 		<!ENTITY T_poi "686868"> 		<!ENTITY T_poi_halo "FFFFFF"> 		<!ENTITY T_water "95C5DD"> 		<!ENTITY T_water_halo "FFFFFF"> 		<!ENTITY T_scale_poi "1"> 		<!ENTITY T_scale_road "1"> 		<!ENTITY T_scale_place "1"> 		<!ENTITY L_graticules "2a4870"> 		<!ENTITY render ""> 		<!ENTITY version "3"> 		]>


<sld:StyledLayerDescriptor version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
xmlns="http://www.opengis.net/sld"
xmlns:sld="http://www.opengis.net/sld"
xmlns:ogc="http://www.opengis.net/ogc"
xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<sld:NamedLayer>
<sld:Name>style_osm_line</sld:Name>
<sld:UserStyle>
<sld:Title>'Line'</sld:Title>
  


<!-- 15 zoom --> <!-- 15 zoom --> <!-- 15 zoom --> <!-- 15 zoom -->  
<sld:FeatureTypeStyle> <!-- rail general -->
<sld:Rule> 
<ogc:Filter>
      <ogc:And>
          <ogc:Or>
               <ogc:PropertyIsEqualTo><ogc:PropertyName>railway</ogc:PropertyName><ogc:Literal>rail</ogc:Literal></ogc:PropertyIsEqualTo>
               <ogc:PropertyIsEqualTo><ogc:PropertyName>railway</ogc:PropertyName><ogc:Literal>narrow_gauge</ogc:Literal></ogc:PropertyIsEqualTo>
                <ogc:PropertyIsEqualTo><ogc:PropertyName>railway</ogc:PropertyName><ogc:Literal>preserved</ogc:Literal></ogc:PropertyIsEqualTo>
         </ogc:Or>
               <ogc:PropertyIsNotEqualTo><ogc:PropertyName>service</ogc:PropertyName><ogc:Literal></ogc:Literal></ogc:PropertyIsNotEqualTo>
         <ogc:Or>       
              <ogc:PropertyIsNotEqualTo><ogc:Function name="isNull"><ogc:PropertyName>service</ogc:PropertyName></ogc:Function><ogc:Literal>true</ogc:Literal></ogc:PropertyIsNotEqualTo>
              <ogc:PropertyIsNotEqualTo><ogc:Function name="strLength"><ogc:PropertyName>service</ogc:PropertyName></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsNotEqualTo> 
         </ogc:Or>
          <ogc:PropertyIsNull><ogc:PropertyName>tunnel</ogc:PropertyName></ogc:PropertyIsNull>
       </ogc:And>
</ogc:Filter>
<sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
  <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
              <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>railway_dark</ogc:Literal><ogc:Literal>&railway_dark;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">0.8</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter></sld:Stroke>
  </sld:LineSymbolizer>      
</sld:Rule>
</sld:FeatureTypeStyle>  
  
  
  
  <sld:FeatureTypeStyle><!--raceway-->
       <sld:Rule> 
      <ogc:Filter>
  
       <ogc:Or>
      <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>raceway</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>tourism</ogc:PropertyName><ogc:Literal>attraction</ogc:Literal></ogc:PropertyIsEqualTo>
        </ogc:Or>

         </ogc:Filter>
      <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
            <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">           
              <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>railway_dark</ogc:Literal><ogc:Literal>&railway_dark;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">3</sld:CssParameter><sld:CssParameter name="opacity">1</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
            </sld:LineSymbolizer>
      </sld:Rule>
</sld:FeatureTypeStyle>

  
  
  


<sld:FeatureTypeStyle><!--track back-->
        <sld:Rule> 
        <ogc:Filter>

        <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>track</ogc:Literal></ogc:PropertyIsEqualTo>
 
        </ogc:Filter>
        <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
                  <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                            <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">4</sld:CssParameter><sld:CssParameter name="opacity">0.7</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
                  </sld:LineSymbolizer>
        </sld:Rule>
</sld:FeatureTypeStyle>

 
  
<sld:FeatureTypeStyle><!--pedestrian from 15-->
          <sld:Rule> 
          <ogc:Filter>
            <ogc:And>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>pedestrian</ogc:Literal></ogc:PropertyIsEqualTo>
              <ogc:PropertyIsNull><ogc:PropertyName>tunnel</ogc:PropertyName></ogc:PropertyIsNull>
            
            
              </ogc:And> 
          </ogc:Filter>
           <sld:MaxScaleDenominator>18055</sld:MaxScaleDenominator>

           
          <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_road</ogc:Literal><ogc:Literal>&L_road;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">10</sld:CssParameter><sld:CssParameter name="opacity">1</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
          </sld:LineSymbolizer>
            
            <TextSymbolizer>
                      <Label><ogc:PropertyName>&name;</ogc:PropertyName></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>10</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">normal</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                      <Priority>200000</Priority> 
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">400</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
                     <VendorOption name="group">yes</VendorOption>
        </TextSymbolizer> 
            
          </sld:Rule>
</sld:FeatureTypeStyle>  
    
<sld:FeatureTypeStyle><!--living_street-->
          <sld:Rule> 
          <ogc:Filter>

          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>living_street</ogc:Literal></ogc:PropertyIsEqualTo>

          </ogc:Filter>
           <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
          <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_road</ogc:Literal><ogc:Literal>&L_road;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">12</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
          </sld:LineSymbolizer>
          
           <TextSymbolizer>
                      <Label><ogc:PropertyName>&name;</ogc:PropertyName></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>9</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">normal</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                      <Priority>20000</Priority> 
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
			<VendorOption name="group">yes</VendorOption>
        </TextSymbolizer>  
            
          </sld:Rule>
</sld:FeatureTypeStyle>
    
<sld:FeatureTypeStyle><!--residential-->
          <sld:Rule> 
          <ogc:Filter>

          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>residential</ogc:Literal></ogc:PropertyIsEqualTo>

          </ogc:Filter>
          <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>

          <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_road</ogc:Literal><ogc:Literal>&L_road;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">12</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
          </sld:LineSymbolizer>
            
          <TextSymbolizer>
                      <Label><ogc:PropertyName>&name;</ogc:PropertyName></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>10</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">normal</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                      <Priority>100000</Priority> 
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
        </TextSymbolizer>
                       
          </sld:Rule>
</sld:FeatureTypeStyle>

<sld:FeatureTypeStyle><!--service, road-->
          <sld:Rule> 
          <ogc:Filter>

          <ogc:Or>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>service</ogc:Literal></ogc:PropertyIsEqualTo>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>unclassified</ogc:Literal></ogc:PropertyIsEqualTo> 
                  <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>road</ogc:Literal></ogc:PropertyIsEqualTo>
          </ogc:Or>

          </ogc:Filter>
          <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>

          <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_road</ogc:Literal><ogc:Literal>&L_road;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">10</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
          </sld:LineSymbolizer>
            
          <TextSymbolizer>
                      <Label><ogc:PropertyName>&name;</ogc:PropertyName></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>11</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">normal</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                      <Priority>20000</Priority> 
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
        </TextSymbolizer>
                       
          </sld:Rule>
</sld:FeatureTypeStyle>
  


<sld:FeatureTypeStyle><!--primary link-->
            <sld:Rule>  
            <ogc:Filter>
   
            <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>primary_link</ogc:Literal></ogc:PropertyIsEqualTo>

            </ogc:Filter>
            <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
                 <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                          <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_primary</ogc:Literal><ogc:Literal>&L_primary;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">18</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
                 </sld:LineSymbolizer>
                             
            </sld:Rule>
</sld:FeatureTypeStyle>  

<sld:FeatureTypeStyle><!--trunk_link-->
         <sld:Rule> 
         <ogc:Filter>

         <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>trunk_link</ogc:Literal></ogc:PropertyIsEqualTo>

         </ogc:Filter>
        <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
             <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                     <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_trunk</ogc:Literal><ogc:Literal>&L_trunk;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">18</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
             </sld:LineSymbolizer>
         </sld:Rule>
</sld:FeatureTypeStyle>
    
  
<sld:FeatureTypeStyle><!--motorway_link-->
         <sld:Rule> 
         <ogc:Filter>

         <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>motorway_link</ogc:Literal></ogc:PropertyIsEqualTo>

         </ogc:Filter>    
         <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
         <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_motorway</ogc:Literal><ogc:Literal>&L_motorway;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">20</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
         </sld:LineSymbolizer>
         </sld:Rule>
</sld:FeatureTypeStyle>
    

<sld:FeatureTypeStyle><!--tertiary-->
         <sld:Rule>  
         <ogc:Filter> 

         <ogc:Or>  
            <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>tertiary</ogc:Literal></ogc:PropertyIsEqualTo>
            <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>tertiary_link</ogc:Literal></ogc:PropertyIsEqualTo>
            </ogc:Or>
 
         </ogc:Filter>  
         <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
         <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_tertiary</ogc:Literal><ogc:Literal>&L_tertiary;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">18</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
         </sld:LineSymbolizer>
           
               <TextSymbolizer>
                      <Label><ogc:PropertyName>&name;</ogc:PropertyName></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>10</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">normal</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                                             <Priority>20000</Priority>  
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
                </TextSymbolizer>
         </sld:Rule>
</sld:FeatureTypeStyle>

  
<sld:FeatureTypeStyle><!--secondary-->
            <sld:Rule> 
            <ogc:Filter>

            <ogc:Or>  
            <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>secondary</ogc:Literal></ogc:PropertyIsEqualTo>
            <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>secondary_link</ogc:Literal></ogc:PropertyIsEqualTo>
            </ogc:Or>

            </ogc:Filter>
            <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>    
                   <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                             <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_secondary</ogc:Literal><ogc:Literal>&L_secondary;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">20</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
                   </sld:LineSymbolizer>
                        
  
                   <TextSymbolizer>
                      <Label><ogc:PropertyName>&name;</ogc:PropertyName></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>11</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">normal</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                                             <Priority>20000</Priority>  
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">30</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
		<VendorOption name="group">yes</VendorOption>
                </TextSymbolizer>
              
              
            </sld:Rule>
</sld:FeatureTypeStyle>


  
<sld:FeatureTypeStyle><!--primary-->
            <sld:Rule>  
            <ogc:Filter>

             <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>primary</ogc:Literal></ogc:PropertyIsEqualTo>

            </ogc:Filter>
               <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>   
                 <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                          <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_primary</ogc:Literal><ogc:Literal>&L_primary;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">22</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
                 </sld:LineSymbolizer>
                      
              
        <TextSymbolizer>
                       <Label><ogc:Function name="strToUpperCase"><ogc:PropertyName>&name;</ogc:PropertyName></ogc:Function></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>11</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">bold</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">30</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
        </TextSymbolizer>
              
            </sld:Rule>
</sld:FeatureTypeStyle>
  
  

           
  
<sld:FeatureTypeStyle><!--trunk-->
          <sld:Rule>  
          <ogc:Filter>

          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>trunk</ogc:Literal></ogc:PropertyIsEqualTo>

          </ogc:Filter>
          <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>   
                 <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                       <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_trunk</ogc:Literal><ogc:Literal>&L_trunk;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">24</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
                 </sld:LineSymbolizer>
            
                 
            
                    <TextSymbolizer>
                       <Label><ogc:Function name="strToUpperCase"><ogc:PropertyName>&name;</ogc:PropertyName></ogc:Function></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>11</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">bold</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                        <Priority>20000</Priority>  
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">30</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
                  </TextSymbolizer>
              
          </sld:Rule>
</sld:FeatureTypeStyle>

  
  
  
<sld:FeatureTypeStyle><!--motorway -->
          <sld:Rule>  
          <ogc:Filter>

          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>motorway</ogc:Literal></ogc:PropertyIsEqualTo>
 
          </ogc:Filter>   
          <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
                <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                     <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_motorway</ogc:Literal><ogc:Literal>&L_motorway;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">26</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">square</sld:CssParameter></sld:Stroke>
                </sld:LineSymbolizer>


                    <TextSymbolizer>
                       <Label><ogc:Function name="strToUpperCase"><ogc:PropertyName>&name;</ogc:PropertyName></ogc:Function></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>11</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">bold</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                        <Priority>20000</Priority>  
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">30</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
                  </TextSymbolizer>
            
           
            
          </sld:Rule>
</sld:FeatureTypeStyle>  
  
<sld:FeatureTypeStyle><!--motorway  line-->
          <sld:Rule>  
          <ogc:Filter>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>motorway</ogc:Literal></ogc:PropertyIsEqualTo>
          </ogc:Filter>   
         <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
                <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                     <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">2</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">square</sld:CssParameter></sld:Stroke>
                </sld:LineSymbolizer>          
  
          </sld:Rule>
</sld:FeatureTypeStyle>    
  
 
  <sld:FeatureTypeStyle><!--general bridge back-->
        <sld:Rule>  
        <ogc:Filter>
        <ogc:And>
          <ogc:Or>
          <ogc:PropertyIsNotEqualTo><ogc:Function name="isNull"><ogc:PropertyName>highway</ogc:PropertyName></ogc:Function><ogc:Literal>true</ogc:Literal></ogc:PropertyIsNotEqualTo>
          <ogc:PropertyIsNotEqualTo><ogc:Function name="strLength"><ogc:PropertyName>highway</ogc:PropertyName></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsNotEqualTo> 
      </ogc:Or> 
          <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
          <ogc:PropertyIsNotEqualTo><ogc:PropertyName>railway</ogc:PropertyName><ogc:Literal>disused</ogc:Literal></ogc:PropertyIsNotEqualTo>
         <ogc:PropertyIsNotEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>proposed</ogc:Literal></ogc:PropertyIsNotEqualTo>
          <ogc:PropertyIsNotEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>construction</ogc:Literal></ogc:PropertyIsNotEqualTo> 
        </ogc:And>
        </ogc:Filter>  
        <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
        <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
        <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">14</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">butt</sld:CssParameter></sld:Stroke>
        </sld:LineSymbolizer>
        </sld:Rule>
  </sld:FeatureTypeStyle> 
    
  <sld:FeatureTypeStyle><!--general bridge -->
       <sld:Rule>  
       <ogc:Filter>
       <ogc:And>
       <ogc:Or>
          <ogc:PropertyIsNotEqualTo><ogc:Function name="isNull"><ogc:PropertyName>highway</ogc:PropertyName></ogc:Function><ogc:Literal>true</ogc:Literal></ogc:PropertyIsNotEqualTo>
          <ogc:PropertyIsNotEqualTo><ogc:Function name="strLength"><ogc:PropertyName>highway</ogc:PropertyName></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsNotEqualTo> 
      </ogc:Or> 
         <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
          <ogc:PropertyIsNotEqualTo><ogc:PropertyName>railway</ogc:PropertyName><ogc:Literal>disused</ogc:Literal></ogc:PropertyIsNotEqualTo>
         <ogc:PropertyIsNotEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>proposed</ogc:Literal></ogc:PropertyIsNotEqualTo>
             <ogc:PropertyIsNotEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>construction</ogc:Literal></ogc:PropertyIsNotEqualTo>
       </ogc:And>
       </ogc:Filter>   
       <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
       <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
       <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_road</ogc:Literal><ogc:Literal>&L_road;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-opacity">0.7</sld:CssParameter><sld:CssParameter name="stroke-width">12</sld:CssParameter><sld:CssParameter name="stroke-linejoin">square</sld:CssParameter><sld:CssParameter name="stroke-linecap">square</sld:CssParameter></sld:Stroke>
       </sld:LineSymbolizer>
       </sld:Rule>
  </sld:FeatureTypeStyle> 
    
  <sld:FeatureTypeStyle><!--tertiary bridge back -->
       <sld:Rule>  
       <ogc:Filter>
       <ogc:And>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>tertiary</ogc:Literal></ogc:PropertyIsEqualTo>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
       </ogc:And>
       </ogc:Filter>
       <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
       <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
       <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">20</sld:CssParameter><sld:CssParameter name="stroke-linejoin">butt</sld:CssParameter><sld:CssParameter name="stroke-linecap">butt</sld:CssParameter></sld:Stroke>
       </sld:LineSymbolizer>
       </sld:Rule>
  </sld:FeatureTypeStyle>
  
  <sld:FeatureTypeStyle><!--tertiary bridge-->
        <sld:Rule>  
        <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>tertiary</ogc:Literal></ogc:PropertyIsEqualTo>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
        </ogc:And>
        </ogc:Filter>  
       <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
        <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
        <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_tertiary</ogc:Literal><ogc:Literal>&L_tertiary;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">18</sld:CssParameter><sld:CssParameter name="stroke-linejoin">square</sld:CssParameter><sld:CssParameter name="stroke-linecap">square</sld:CssParameter></sld:Stroke>
        </sld:LineSymbolizer>

 <TextSymbolizer>
                      <Label><ogc:PropertyName>&name;</ogc:PropertyName></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>10</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">normal</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                                             <Priority>20000</Priority>  
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
                </TextSymbolizer>
        </sld:Rule>
  </sld:FeatureTypeStyle> 
  
  <sld:FeatureTypeStyle><!--secondary bridge back-->
       <sld:Rule>  
       <ogc:Filter>
       <ogc:And>
         <ogc:Or>
           <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>secondary</ogc:Literal></ogc:PropertyIsEqualTo>
           <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>secondary_link</ogc:Literal></ogc:PropertyIsEqualTo>
         </ogc:Or>  
       <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
       </ogc:And>
       </ogc:Filter> 
       <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
       <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
       <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">22</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">butt</sld:CssParameter></sld:Stroke>
       </sld:LineSymbolizer>
       </sld:Rule>
  </sld:FeatureTypeStyle>
  
  <sld:FeatureTypeStyle><!--motorway_link bridge back-->
         <sld:Rule> 
         <ogc:Filter>
          <ogc:And>
         <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>motorway_link</ogc:Literal></ogc:PropertyIsEqualTo>
         <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
         </ogc:And>
         </ogc:Filter>
         <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
             <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                     <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">22</sld:CssParameter><sld:CssParameter name="stroke-opacity">1</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">butt</sld:CssParameter></sld:Stroke>
             </sld:LineSymbolizer>
         </sld:Rule>
</sld:FeatureTypeStyle>
  
<sld:FeatureTypeStyle><!--secondary bridge-->
      <sld:Rule>   
      <ogc:Filter>
      <ogc:And>
        <ogc:Or>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>secondary</ogc:Literal></ogc:PropertyIsEqualTo>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>secondary_link</ogc:Literal></ogc:PropertyIsEqualTo>
        </ogc:Or>  
        <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:And>
      </ogc:Filter> 
      <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
      <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_secondary</ogc:Literal><ogc:Literal>&L_secondary;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">22</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
      </sld:LineSymbolizer>
 <TextSymbolizer>
                      <Label><ogc:PropertyName>&name;</ogc:PropertyName></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>11</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">bold</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                                             <Priority>20000</Priority>  
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
                </TextSymbolizer>

      </sld:Rule>
  </sld:FeatureTypeStyle>
  
  <sld:FeatureTypeStyle><!--primary bridge back-->
        <sld:Rule>  
        <ogc:Filter>
        <ogc:And>
          <ogc:Or>
            <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>primary</ogc:Literal></ogc:PropertyIsEqualTo>
            <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>primary_link</ogc:Literal></ogc:PropertyIsEqualTo>
          </ogc:Or>
          <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
        </ogc:And>
        </ogc:Filter>
        <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
        <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
        <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">24</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">butt</sld:CssParameter></sld:Stroke>
        </sld:LineSymbolizer>


        </sld:Rule>
  </sld:FeatureTypeStyle>
  
    <sld:FeatureTypeStyle><!--motorway_link bridge-->
         <sld:Rule> 
         <ogc:Filter>
          <ogc:And>
         <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>motorway_link</ogc:Literal></ogc:PropertyIsEqualTo>
         <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
         </ogc:And>
         </ogc:Filter>
         <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
         <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_motorway</ogc:Literal><ogc:Literal>&L_motorway;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">22</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">square</sld:CssParameter></sld:Stroke>
         </sld:LineSymbolizer>
           
         </sld:Rule>
</sld:FeatureTypeStyle>
  
  <sld:FeatureTypeStyle><!--primary bridge-->
<sld:Rule>  
<ogc:Filter>
<ogc:And>
      <ogc:Or>
  <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>primary</ogc:Literal></ogc:PropertyIsEqualTo>
  <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>primary_link</ogc:Literal></ogc:PropertyIsEqualTo>
  </ogc:Or>
  <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
  </ogc:And>
  </ogc:Filter> 
  <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
  <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
  <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_primary</ogc:Literal><ogc:Literal>&L_primary;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">22</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">square</sld:CssParameter></sld:Stroke>
  </sld:LineSymbolizer>

 <TextSymbolizer>
                      <Label><ogc:Function name="strToUpperCase"><ogc:PropertyName>&name;</ogc:PropertyName></ogc:Function></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>12</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">bold</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                                             <Priority>20000</Priority>  
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
                </TextSymbolizer>
  </sld:Rule>
    </sld:FeatureTypeStyle>
    
        
    <sld:FeatureTypeStyle><!--trunk bridge back -->
    <sld:Rule> 
    <ogc:Filter>
     <ogc:And>
     <ogc:Or>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>trunk_link</ogc:Literal></ogc:PropertyIsEqualTo>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>trunk</ogc:Literal></ogc:PropertyIsEqualTo>
    </ogc:Or>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
    </ogc:And>
    </ogc:Filter>
    <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
    <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">26</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">butt</sld:CssParameter></sld:Stroke>
    </sld:LineSymbolizer>
    </sld:Rule>
    </sld:FeatureTypeStyle>
    
    <sld:FeatureTypeStyle><!--trunk bridge-->
    <sld:Rule>  
    <ogc:Filter>
       <ogc:And>
     <ogc:Or>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>trunk_link</ogc:Literal></ogc:PropertyIsEqualTo>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>trunk</ogc:Literal></ogc:PropertyIsEqualTo>
    </ogc:Or>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
    </ogc:And>
    </ogc:Filter>  
    <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
    <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_trunk</ogc:Literal><ogc:Literal>&L_trunk;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">24</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">square</sld:CssParameter></sld:Stroke>
    </sld:LineSymbolizer>

 <TextSymbolizer>
                      <Label><ogc:Function name="strToUpperCase"><ogc:PropertyName>&name;</ogc:PropertyName></ogc:Function></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>11</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">bold</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                                             <Priority>20000</Priority>  
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
			<VendorOption name="group">yes</VendorOption>
                </TextSymbolizer>

    </sld:Rule>
    </sld:FeatureTypeStyle> 
  

       
    <sld:FeatureTypeStyle><!--motorway bridge back-->
    <sld:Rule>  
    <ogc:Filter>
    <ogc:And>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>motorway</ogc:Literal></ogc:PropertyIsEqualTo>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
    </ogc:And>
    </ogc:Filter>
    <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
    <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">28</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">butt</sld:CssParameter></sld:Stroke>
    </sld:LineSymbolizer>
    </sld:Rule>
    </sld:FeatureTypeStyle>
   
   <sld:FeatureTypeStyle><!--motorway bridge-->
    <sld:Rule>  
    <ogc:Filter>
    <ogc:And>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>motorway</ogc:Literal></ogc:PropertyIsEqualTo>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
    </ogc:And>
    </ogc:Filter>
    <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
    <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_motorway</ogc:Literal><ogc:Literal>&L_motorway;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">26</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">round</sld:CssParameter></sld:Stroke>
    </sld:LineSymbolizer>
 <TextSymbolizer>
                     <Label><ogc:Function name="strToUpperCase"><ogc:PropertyName>&name;</ogc:PropertyName></ogc:Function></Label>
                      <Font><CssParameter name="font-family"><ogc:Function name="env"><ogc:Literal>font_family</ogc:Literal><ogc:Literal>&font_family;</ogc:Literal></ogc:Function></CssParameter>
<CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>12</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-style">normal</CssParameter><CssParameter name="font-weight">bold</CssParameter><CssParameter name="opacity">1</CssParameter></Font>
                      <LabelPlacement><LinePlacement/></LabelPlacement>  
                      <Halo><Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road_halo</ogc:Literal><ogc:Literal>&T_road_halo;</ogc:Literal></ogc:Function></CssParameter></Fill></Halo>
                      <Fill><CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>T_road</ogc:Literal><ogc:Literal>&T_road;</ogc:Literal></ogc:Function></CssParameter></Fill>
                                             <Priority>20000</Priority>  
                      <VendorOption name="followLine">true</VendorOption>     
                      <VendorOption name="maxDisplacement">40</VendorOption>
                      <VendorOption name="repeat">200</VendorOption>
                      <VendorOption name="maxAngleDelta">40</VendorOption>
                      <VendorOption name="goodnessOfFit">0</VendorOption>
			<VendorOption name="group">yes</VendorOption>
                      <VendorOption name="forceLeftToRight">true</VendorOption>
                </TextSymbolizer>
    </sld:Rule>
    </sld:FeatureTypeStyle>
    
     <sld:FeatureTypeStyle><!--motorway bridge line-->
    <sld:Rule>  
    <ogc:Filter>
    <ogc:And>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>highway</ogc:PropertyName><ogc:Literal>motorway</ogc:Literal></ogc:PropertyIsEqualTo>
    <ogc:PropertyIsEqualTo><ogc:PropertyName>bridge</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo>
    </ogc:And>
    </ogc:Filter>
    <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
    <sld:Stroke><sld:CssParameter name="stroke">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></sld:CssParameter><sld:CssParameter name="stroke-width">1</sld:CssParameter><sld:CssParameter name="stroke-linejoin">round</sld:CssParameter><sld:CssParameter name="stroke-linecap">square</sld:CssParameter></sld:Stroke>
    </sld:LineSymbolizer>
    </sld:Rule>
    </sld:FeatureTypeStyle>
  
 
    
   
  <!-- ARROWS-->  <!-- ARROWS-->  <!-- ARROWS-->  
  
  <sld:FeatureTypeStyle> <!-- ARROWS-->  
  <Rule> 
  <ogc:Filter> 
  <ogc:PropertyIsEqualTo> 
  <ogc:PropertyName>oneway</ogc:PropertyName><ogc:Literal>yes</ogc:Literal></ogc:PropertyIsEqualTo> 
  </ogc:Filter> 
  <sld:MaxScaleDenominator>9027</sld:MaxScaleDenominator>
  <TextSymbolizer>
    
    <Label><ogc:Literal>&#x2192;</ogc:Literal></Label> 
    <Font><CssParameter name="font-family">Lucida Sans</CssParameter><CssParameter name="font-style">Normal</CssParameter><CssParameter name="font-size"><ogc:Mul><ogc:Function name="env"><ogc:Literal>T_scale_road</ogc:Literal><ogc:Literal>&T_scale_road;</ogc:Literal></ogc:Function><ogc:Literal>10</ogc:Literal>
</ogc:Mul></CssParameter><CssParameter name="font-weight">Normal</CssParameter></Font> 
    <LabelPlacement><LinePlacement><PerpendicularOffset>-2</PerpendicularOffset></LinePlacement></LabelPlacement> 
    <Fill> <CssParameter name="fill">#<ogc:Function name="env"><ogc:Literal>L_highway_back</ogc:Literal><ogc:Literal>&L_highway_back;</ogc:Literal></ogc:Function></CssParameter> <CssParameter name="fill-opacity">1.0</CssParameter> </Fill> 
    <Priority>0</Priority>
    <VendorOption name="forceLeftToRight">false</VendorOption>    
    <VendorOption name="followLine">true</VendorOption>    
    <VendorOption name="conflictResolution">true</VendorOption>
    </TextSymbolizer> 
</Rule> 
</sld:FeatureTypeStyle>

</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>