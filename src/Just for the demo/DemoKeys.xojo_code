#tag Class
Protected Class DemoKeys
	#tag Method, Flags = &h0
		Sub Constructor(anthropicAPIKey As String, ollamaEndpoint As String, openAIAPIKey As String)
		  Self.AnthropicAPIKey = anthropicAPIKey
		  Self.OllamaEndpoint = ollamaEndpoint
		  Self.OpenAIAPIKey = openAIAPIKey
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = About
		Used to pass API keys and endpoints between the demo window and the API keys popover.
		
	#tag EndNote


	#tag Property, Flags = &h0
		AnthropicAPIKey As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OllamaEndpoint As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OpenAIAPIKey As String
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
			Name="AnthropicAPIKey"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OllamaEndpoint"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
