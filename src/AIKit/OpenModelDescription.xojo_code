#tag Class
Protected Class OpenModelDescription
Inherits AIKit.ModelDescription
	#tag Method, Flags = &h0
		Sub Constructor(id As String, name As String, created As DateTime, parameterSize As String, quantisationLevel As String, size As Integer, sizeVRAM As Integer)
		  Super.Constructor(id, name, created)
		  
		  Self.ParameterSize = parameterSize
		  Self.QuantisationLevel = quantisationLevel
		  Self.Size = size
		  Self.SizeVRAM = sizeVRAM
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0, Description = 576865726520617661696C61626C652C2074686973206973206120737472696E672064657363726962696E6720746865206E756D626572206F6620706172616D65746572732028652E673A202237306222292E
		ParameterSize As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 576865726520617661696C61626C652C207468697320697320746865207175616E7469736174696F6E206C6576656C206F6620746865206D6F64656C2028652E673A202251345F3022292E
		QuantisationLevel As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652073697A65206F6620746865206D6F64656C20696E2062797465732E
		Size As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 546865206E756D626572206F662062797465732074686973206D6F64656C2069732070726573656E746C79206F6363757079696E6720696E205652414D2E
		SizeVRAM As Integer = 0
	#tag EndProperty


End Class
#tag EndClass
