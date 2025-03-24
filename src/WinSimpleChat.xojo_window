#tag DesktopWindow
Begin DesktopWindow WinSimpleChat
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   706
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1994854399
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Simple Chat"
   Type            =   0
   Visible         =   True
   Width           =   623
   Begin DesktopTextArea Prompt
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   126
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   43
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   583
   End
   Begin DesktopLabel LabelPrompt
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Prompt:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopButton ButtonSend
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Send"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   523
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   181
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton ButtonStop
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Stop"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   431
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   181
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopTextArea Messages
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   441
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   245
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   583
   End
   Begin DesktopLabel LabelMessages
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Messages:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   213
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopButton ButtonNewConversation
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "New Conversation"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   181
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   138
   End
   Begin DesktopCheckBox CheckBoxThink
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Think"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   349
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   181
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   70
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  'Const MODEL = "claude-3-5-haiku-20241022"
		  Const MODEL = "claude-3-7-sonnet-20250219"
		  'Const MODEL = "deepseek-r1:14b"
		  'Const MODEL = "llava:13b"
		  'Const MODEL = "gemma3:27b"
		  
		  Chat = New AIKit.Chat(MODEL, AIKit.Providers.Anthropic, KeySafe.AnthropicAPIKey)
		  'Chat = New AIKit.Chat(MODEL, AIKit.Providers.Ollama, "", KeySafe.OllamaEndpoint)
		  
		  // Register some callbacks.
		  Chat.APIErrorDelegate = AddressOf APIError
		  Chat.ContentReceivedDelegate = AddressOf ContentReceived
		  Chat.MaxTokensReachedDelegate = AddressOf MaxTokensReached
		  Chat.MessageStartedDelegate = AddressOf MessageStarted
		  Chat.MessageFinishedDelegate = AddressOf MessageFinished
		  Chat.ThinkingReceivedDelegate = AddressOf ThinkingReceived
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 416E20415049206572726F72206F636375727265642E
		Protected Sub APIError(sender As AIKit.Chat, errorMessage As String)
		  /// An API error occurred.
		  
		  #Pragma Unused sender
		  
		  MessageBox(errorMessage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 4D65737361676520636F6E74656E74206973206265696E672072656365697665642E
		Protected Sub ContentReceived(sender As AIKit.Chat, content As String)
		  /// Message content is being received.
		  
		  #Pragma Unused sender
		  
		  Messages.Text = Messages.Text + content
		  
		  // Scroll the textarea.
		  Var lastLine As Integer = Messages.LineNumber(Messages.Text.Length)
		  
		  Messages.VerticalScrollPosition = lastLine
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 44656C656761746520666F722074686520636861742773206D6178696D756D20746F6B656E2072656163686564206576656E742E
		Protected Sub MaxTokensReached(sender As AIKit.Chat)
		  /// Delegate for the chat's maximum token reached event.
		  
		  #Pragma Unused sender
		  
		  ButtonStop.Enabled = False
		  
		  MessageBox("The maximum number of tokens was reached.")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 44656C656761746520666F7220746865206D6F64656C2773204D65737361676546696E6973686564206576656E742E
		Protected Sub MessageFinished(sender As AIKit.Chat, response As AIKit.ChatResponse)
		  /// Delegate for the model's MessageFinished event.
		  
		  #Pragma Unused sender
		  #Pragma Unused response
		  
		  ButtonStop.Enabled = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MessageStarted(sender As AIKit.Chat, messageID As String, inputTokenCount As Integer)
		  /// A new message has begun.
		  
		  #Pragma Unused sender
		  #Pragma Unused messageID
		  #Pragma Unused inputTokenCount
		  
		  Messages.Text = Messages.Text + "Assistant:" + EndOfLine
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 5468696E6B696E6720636F6E74656E74206973206265696E672072656365697665642E
		Protected Sub ThinkingReceived(sender As AIKit.Chat, content As String)
		  /// Thinking content is being received.
		  
		  #Pragma Unused sender
		  
		  Messages.Text = Messages.Text + content
		  
		  // Scroll the textarea.
		  Var lastLine As Integer = Messages.LineNumber(Messages.Text.Length)
		  
		  Messages.VerticalScrollPosition = lastLine
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Chat As AIKit.Chat
	#tag EndProperty


#tag EndWindowCode

#tag Events Prompt
	#tag Event
		Sub TextChanged()
		  ButtonSend.Enabled = Me.Text.Length > 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonSend
	#tag Event
		Sub Pressed()
		  If Messages.Text.Length > 0 And Messages.Text.Right(1) <> EndOfLine Then
		    Messages.Text = Messages.Text + EndOfLine + EndOfLine
		  End If
		  
		  Messages.Text = Messages.Text + "User:" + EndOfLine + Prompt.Text + EndOfLine + EndOfLine
		  
		  ButtonStop.Enabled = True
		  
		  Chat.Ask(Prompt.Text)
		  
		  Prompt.Text = ""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonStop
	#tag Event
		Sub Pressed()
		  // Stop the API call.
		  
		  Chat.Stop
		  
		  Me.Enabled = False
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonNewConversation
	#tag Event
		Sub Pressed()
		  Chat.ClearHistory
		  
		  Messages.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBoxThink
	#tag Event
		Sub ValueChanged()
		  If Self.Chat <> Nil Then
		    Self.Chat.ShouldThink = Me.Value
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
