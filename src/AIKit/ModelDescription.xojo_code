#tag Class
Protected Class ModelDescription
	#tag Method, Flags = &h0
		Sub Constructor(id As String, name As String, created As DateTime)
		  Self.ID = id
		  Self.Name = name
		  Self.Created = created
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = About
		Contains descriptive data about a model. Not all properties apply to all models.
		
		
		
	#tag EndNote


	#tag Property, Flags = &h0, Description = 54686973206D6F64656C2773206372656174696F6E20646174652E
		Created As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 49662074686973206D6F64656C206973206C6F6164656420696E746F206D656D6F72792C2074686973206973207768656E206974206973207363686564756C656420746F20626520756E6C6F616465642E
		ExpiresAt As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 54686520494420666F722074686973206D6F64656C20746861742073686F756C64206265207573656420666F72204150492063616C6C732E
		ID As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652068756D616E2D7265616461626C65206E616D65206F662074686973206D6F64656C2E
		Name As String
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
	#tag EndViewBehavior
End Class
#tag EndClass
