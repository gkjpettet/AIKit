#tag Class
Private Class APICredentials
	#tag Property, Flags = &h0, Description = 4F7074696F6E616C20415049206B657920666F722074686520416E7468726F706963204150492E20546869732063616E206265206F76657272696464656E206F6E2061207065722D436861742062617369632E
		Anthropic As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4F7074696F6E616C20415049206B657920666F7220746865204F70656E4149204150492E20546869732063616E206265206F76657272696464656E206F6E2061207065722D436861742062617369632E
		Ollama As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4F7074696F6E616C20415049206B657920666F7220746865204F70656E4149204150492E20546869732063616E206265206F76657272696464656E206F6E2061207065722D436861742062617369632E
		OpenAI As String
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
	#tag EndViewBehavior
End Class
#tag EndClass
