#tag Module
Protected Module KeySafe
	#tag ComputedProperty, Flags = &h1, Description = 52657475726E73206D7920416E7468726F70696320415049206B65792066726F6D2074686520707269766174652E6A736F6E2066696C6520696E20746865207265706F2E
		#tag Getter
			Get
			  Var apiKeys As Dictionary = ParsedJSONData.Lookup("apiKeys", Nil)
			  If apiKeys = Nil Then Return ""
			  
			  Return apiKeys.Lookup("anthropic", "")
			  
			End Get
		#tag EndGetter
		Protected AnthropicAPIKey As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1, Description = 52657475726E73206D7920476F6F676C652047656D696E6920415049206B65792066726F6D2074686520707269766174652E6A736F6E2066696C6520696E20746865207265706F2E
		#tag Getter
			Get
			  Var apiKeys As Dictionary = ParsedJSONData.Lookup("apiKeys", Nil)
			  If apiKeys = Nil Then Return ""
			  
			  Return apiKeys.Lookup("gemini", "")
			  
			End Get
		#tag EndGetter
		Protected GeminiAPIKey As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21, Description = 546865204A534F4E2066696C6520636F6E7461696E696E67206D7920415049206B657973207468617420697320636F6E7461696E65642077697468696E20746865206069676E6F72656020666F6C64657220616E64206973206E6F7420636F6D6D697474656420746F20746865207265706F2E
		#tag Getter
			Get
			  Var ignoreFolder As FolderItem = App.ExecutableFile.Parent.Parent.Parent.Parent.Parent.Child("ignore")
			  Return ignoreFolder.Child("private.json")
			End Get
		#tag EndGetter
		Private KeyFile As FolderItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1, Description = 52657475726E73206D79204F6C6C616D6120656E64706F696E742E
		#tag Getter
			Get
			  Var endpoints As Dictionary = ParsedJSONData.Lookup("endPoints", Nil)
			  If endpoints = Nil Then Return ""
			  
			  Return endpoints.Lookup("ollama", "")
			  
			End Get
		#tag EndGetter
		Protected OllamaEndpoint As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1, Description = 52657475726E73206D79204F70656E414920415049206B65792066726F6D2074686520707269766174652E6A736F6E2066696C6520696E20746865207265706F2E
		#tag Getter
			Get
			  Var apiKeys As Dictionary = ParsedJSONData.Lookup("apiKeys", Nil)
			  If apiKeys = Nil Then Return ""
			  
			  Return apiKeys.Lookup("openai", "")
			  
			End Get
		#tag EndGetter
		Protected OpenAIAPIKey As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21, Description = 52657475726E732074686520706172736564204A534F4E20646174612077697468696E206069676E6F72652F707269766174652E6A736F6E602E
		#tag Getter
			Get
			  #Pragma BreakOnExceptions False
			  
			  Try
			    
			    Var tin As TextInputStream = TextInputStream.Open(KeyFile)
			    Var json As String = tin.ReadAll
			    tin.Close
			    
			    Try
			      Return ParseJSON(json)
			    Catch e As JSONException
			      e.Message = "An error occurred in the `ignore/private.json` file: " + e.Message
			      Raise e
			    End Try
			    
			  Catch e As IOException
			    e.Message = "An error occurred trying to read the `ignore/private.json` file: " + e.Message
			    Raise e
			    
			  End Try
			  
			End Get
		#tag EndGetter
		Private ParsedJSONData As Dictionary
	#tag EndComputedProperty


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
End Module
#tag EndModule
