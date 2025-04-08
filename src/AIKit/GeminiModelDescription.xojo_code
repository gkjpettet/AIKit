#tag Class
Protected Class GeminiModelDescription
Inherits AIKit.ModelDescription
	#tag Note, Name = About
		Adds additional properties that are returned by the Gemini API for each model.
		
		
	#tag EndNote


	#tag Property, Flags = &h0, Description = 412068756D616E2D7265616461626C65206465736372697074696F6E206F662074686973206D6F64656C2E
		Description As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F6620746F6B656E732074686973206D6F64656C20737570706F72747320666F7220696E7075742E
		InputTokenLimit As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F6620746F6B656E732074686973206D6F64656C20737570706F72747320666F72206F75747075742E
		OutputTokenLimit As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652041504920656E64706F696E74732074686973206D6F64656C20737570706F7274732E20457373656E7469616C6C792074686520737570706F727465642066656174757265732E
		SupportedEndpoints() As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParameterSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="QuantisationLevel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SizeVRAM"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
