<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>Block_proc</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>inImage_rows_V_out</name>
						<fileName>resize_image/resize_image.cpp</fileName>
						<fileDirectory>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</fileDirectory>
						<lineNumber>7</lineNumber>
						<contextFuncName>scaleImage</contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="7" tracking_level="0" version="0">
								<first>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</first>
								<second class_id="8" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="9" tracking_level="0" version="0">
										<first class_id="10" tracking_level="0" version="0">
											<first>resize_image/resize_image.cpp</first>
											<second>scaleImage</second>
										</first>
										<second>7</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>inImage.rows.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>10</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="11" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>inImage_cols_V_out</name>
						<fileName>resize_image/resize_image.cpp</fileName>
						<fileDirectory>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</fileDirectory>
						<lineNumber>7</lineNumber>
						<contextFuncName>scaleImage</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>resize_image/resize_image.cpp</first>
											<second>scaleImage</second>
										</first>
										<second>7</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>inImage.cols.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>11</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>outImage_rows_V_out</name>
						<fileName>resize_image/resize_image.cpp</fileName>
						<fileDirectory>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</fileDirectory>
						<lineNumber>8</lineNumber>
						<contextFuncName>scaleImage</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>resize_image/resize_image.cpp</first>
											<second>scaleImage</second>
										</first>
										<second>8</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>outImage.rows.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>11</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>outImage_cols_V_out</name>
						<fileName>resize_image/resize_image.cpp</fileName>
						<fileDirectory>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</fileDirectory>
						<lineNumber>8</lineNumber>
						<contextFuncName>scaleImage</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>resize_image/resize_image.cpp</first>
											<second>scaleImage</second>
										</first>
										<second>8</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>outImage.cols.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>11</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="12" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="13" tracking_level="1" version="0" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>inImage_rows_V_out_write_ln656</name>
						<fileName>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</fileName>
						<fileDirectory>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</fileDirectory>
						<lineNumber>656</lineNumber>
						<contextFuncName>init</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</first>
								<second>
									<count>3</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>642</second>
									</item>
									<item>
										<first>
											<first>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</first>
											<second>init</second>
										</first>
										<second>656</second>
									</item>
									<item>
										<first>
											<first>resize_image/resize_image.cpp</first>
											<second>scaleImage</second>
										</first>
										<second>7</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>16</item>
					<item>17</item>
					<item>19</item>
				</oprand_edges>
				<opcode>write</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.63</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="13" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>inImage_cols_V_out_write_ln657</name>
						<fileName>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</fileName>
						<fileDirectory>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</fileDirectory>
						<lineNumber>657</lineNumber>
						<contextFuncName>init</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</first>
								<second>
									<count>3</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>642</second>
									</item>
									<item>
										<first>
											<first>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</first>
											<second>init</second>
										</first>
										<second>657</second>
									</item>
									<item>
										<first>
											<first>resize_image/resize_image.cpp</first>
											<second>scaleImage</second>
										</first>
										<second>7</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>21</item>
					<item>22</item>
					<item>24</item>
				</oprand_edges>
				<opcode>write</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.63</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="13" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>outImage_rows_V_out_write_ln656</name>
						<fileName>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</fileName>
						<fileDirectory>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</fileDirectory>
						<lineNumber>656</lineNumber>
						<contextFuncName>init</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</first>
								<second>
									<count>3</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>642</second>
									</item>
									<item>
										<first>
											<first>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</first>
											<second>init</second>
										</first>
										<second>656</second>
									</item>
									<item>
										<first>
											<first>resize_image/resize_image.cpp</first>
											<second>scaleImage</second>
										</first>
										<second>8</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>25</item>
					<item>26</item>
					<item>28</item>
				</oprand_edges>
				<opcode>write</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.63</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="13" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>outImage_cols_V_out_write_ln657</name>
						<fileName>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</fileName>
						<fileDirectory>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</fileDirectory>
						<lineNumber>657</lineNumber>
						<contextFuncName>init</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</first>
								<second>
									<count>3</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>642</second>
									</item>
									<item>
										<first>
											<first>C:/Xilinx/Vivado/2019.1/common/technology/autopilot/hls/hls_video_core.h</first>
											<second>init</second>
										</first>
										<second>657</second>
									</item>
									<item>
										<first>
											<first>resize_image/resize_image.cpp</first>
											<second>scaleImage</second>
										</first>
										<second>8</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>29</item>
					<item>30</item>
					<item>32</item>
				</oprand_edges>
				<opcode>write</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.63</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="13" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>_ln10</name>
						<fileName>resize_image/resize_image.cpp</fileName>
						<fileDirectory>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</fileDirectory>
						<lineNumber>10</lineNumber>
						<contextFuncName>scaleImage</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\mazzo\Desktop\Sistemi-Digitali-M\Progetto\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>resize_image/resize_image.cpp</first>
											<second>scaleImage</second>
										</first>
										<second>10</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_10">
				<Value>
					<Obj>
						<type>2</type>
						<id>18</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>10</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>480</content>
			</item>
			<item class_id_reference="16" object_id="_11">
				<Value>
					<Obj>
						<type>2</type>
						<id>23</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>11</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>640</content>
			</item>
			<item class_id_reference="16" object_id="_12">
				<Value>
					<Obj>
						<type>2</type>
						<id>27</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>11</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>600</content>
			</item>
			<item class_id_reference="16" object_id="_13">
				<Value>
					<Obj>
						<type>2</type>
						<id>31</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>11</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>800</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_14">
				<Obj>
					<type>3</type>
					<id>14</id>
					<name>Block__proc</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>5</count>
					<item_version>0</item_version>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_15">
				<id>17</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_16">
				<id>19</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_17">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>26</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>30</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_23">
			<mId>1</mId>
			<mTag>Block__proc</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>0</mMinLatency>
			<mMaxLatency>0</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="26" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="27" tracking_level="0" version="0">
			<first>9</first>
			<second class_id="28" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="29" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="30" tracking_level="0" version="0">
			<first>14</first>
			<second class_id="31" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="32" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</regions>
	<dp_fu_nodes class_id="33" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="34" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="35" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="36" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="37" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>
