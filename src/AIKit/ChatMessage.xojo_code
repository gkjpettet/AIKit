#tag Class
Protected Class ChatMessage
	#tag Method, Flags = &h0
		Sub Constructor(role As String, content As String)
		  Self.Role = role
		  Self.Content = content
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 52657475726E732061204A534F4E206B65792D76616C756520737472696E672E
		Private Function JSONKeyValue(key As Variant, value As Variant) As String
		  /// Returns a JSON key-value string.
		  
		  Return GenerateJSON(key) + ": " + GenerateJSON(value)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686973206D65737361676520617320612044696374696F6E61727920666F7220656E636F64696E67206173204A534F4E2E
		Function ToDictionary() As Dictionary
		  /// Returns this message as a Dictionary for encoding as JSON.
		  
		  Return New Dictionary("role" : Role, "content" : Content)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061204A534F4E20726570726573656E746174696F6E206F662074686973206D6573736167652E
		Function ToJSON() As String
		  /// Returns a JSON representation of this message.
		  
		  Var json() As String
		  
		  json.Add("{")
		  json.Add(JSONKeyValue("role", Role))
		  json.Add(", ")
		  json.Add(JSONKeyValue("content", Content))
		  json.Add("}")
		  
		  Return String.FromArray(json, "")
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Content As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Role As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 496620746869732069732061206D6573736167652066726F6D2074686520617373697374616E7420616E642074686520617373697374616E742074686F756768742C207468697320697320746865207468696E6B696E6720636F6E74656E742E
		ThinkingContent As String
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
			Name="Role"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Content"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThinkingContent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
