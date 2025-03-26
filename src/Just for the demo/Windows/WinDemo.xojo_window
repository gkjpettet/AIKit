#tag DesktopWindow
Begin DesktopWindow WinDemo
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
   Height          =   720
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "AIKit"
   Type            =   0
   Visible         =   True
   Width           =   920
   Begin DesktopPopupMenu PopupProvider
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   156
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   157
   End
   Begin DesktopLabel LabelProvider
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   45
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
      Text            =   "Provider:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   99
   End
   Begin DesktopPopupMenu PopupModel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   398
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   238
   End
   Begin DesktopLabel LabelModel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   325
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Model:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin DesktopCheckBox CheckBoxAllowThinking
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Allow thinking"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   573
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      VisualState     =   0
      Width           =   117
   End
   Begin DesktopLabel LabelMaxTokens
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   45
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Max Tokens:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopLabel LabelThinkingBudget
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   317
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Thinking Budget (Tokens):"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   173
   End
   Begin DesktopTextField MaxTokens
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   157
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "4096"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   "-#####"
      Visible         =   True
      Width           =   59
   End
   Begin DesktopTextField ThinkingBudget
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   502
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "1024"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   "#####"
      Visible         =   True
      Width           =   59
   End
   Begin DesktopTextArea SystemPrompt
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
      Height          =   90
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   116
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   537
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
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "System Prompt (Optional):"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   84
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   178
   End
   Begin DesktopLabel LabelImages
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Images:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   84
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopListBox ListBoxImages
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   False
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   1
      ColumnWidths    =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   110
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   2
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   116
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   331
      _ScrollWidth    =   -1
   End
   Begin DesktopLabel Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   569
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Drop images onto listbox to add to prompt"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   228
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   289
   End
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
      Height          =   90
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
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   250
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   880
   End
   Begin DesktopLabel LabelPrompt1
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
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Prompt:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   218
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
      Left            =   820
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   352
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
      Left            =   728
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   352
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton ButtonClearConversation
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Clear Conversation"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   566
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   352
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   145
   End
   Begin DesktopLabel LabelOutput
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
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Output:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   352
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopButton ButtonKeysAndEndpoints
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Keys && Endpoints..."
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   765
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   135
   End
   Begin DesktopTextArea Output
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
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
      Height          =   293
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
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   384
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   880
   End
   Begin DotLabel DotSupportsImages
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowTabs       =   False
      Backdrop        =   0
      Caption         =   "Model supports images"
      CaptionColor    =   &c000000
      CondenseCaption =   True
      DotBorderColor  =   &c000000
      DotColor        =   &c00FF00
      DotDiameter     =   16.0
      DotHasBorder    =   False
      DotPadding      =   5
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   12
      Height          =   20
      Index           =   -2147483648
      Left            =   648
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   True
      Visible         =   True
      Width           =   197
   End
   Begin DesktopLabel Info
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   689
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   880
   End
   Begin DesktopCheckBox CheckBoxNoMaxTokenLimit
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "No limit"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   228
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "If checked then no limit will be placed on the number of tokens the model should respond with. Not all APIs support this."
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      VisualState     =   1
      Width           =   77
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  Self.Keys = New DemoKeys(KeySafe.AnthropicAPIKey, KeySafe.OllamaEndpoint)
		  
		  PopupProvider.SelectedRowIndex = 0
		  UpdateModelsPopup(PopupProvider.RowTagAt(0))
		  
		  SetupChat
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 416E20415049206572726F72206F636375727265642E
		Protected Sub APIError(sender As AIKit.Chat, errorMessage As String)
		  /// An API error occurred.
		  
		  #Pragma Unused sender
		  
		  MessageBox(errorMessage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearConversation()
		  /// Clears the current conversation.
		  
		  If Chat <> Nil Then
		    Chat.ClearHistory
		    Chat.Stop
		  End If
		  
		  Output.Text = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 4D65737361676520636F6E74656E74206973206265696E672072656365697665642E
		Protected Sub ContentReceived(sender As AIKit.Chat, content As String)
		  /// Message content is being received.
		  
		  #Pragma Unused sender
		  
		  Output.Text = Output.Text + content
		  
		  // Scroll the textarea.
		  Var lastLine As Integer = Output.LineNumber(Output.Text.Length)
		  
		  Output.VerticalScrollPosition = lastLine
		  
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
		  
		  AwaitingResponse = False
		  ButtonStop.Enabled = False
		  
		  Info.Text = response.TokensPerSecond.ToString + " tokens/second"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MessageStarted(sender As AIKit.Chat, messageID As String, inputTokenCount As Integer)
		  /// A new message has begun.
		  
		  #Pragma Unused sender
		  #Pragma Unused messageID
		  #Pragma Unused inputTokenCount
		  
		  AwaitingResponse = True
		  Output.Text = Output.Text + "Assistant:" + EndOfLine
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207570206F7572206368617420696E7374616E63652E
		Sub SetupChat()
		  /// Sets up our chat instance.
		  
		  // Create a new chat instance using the selected model and provider.
		  Chat = New AIKit.Chat(PopupModel.SelectedRowText, PopupProvider.RowTagAt(PopupProvider.SelectedRowIndex), _
		  APIKey, Endpoint)
		  
		  // Hook up our delegates to the chat's events.
		  Chat.APIErrorDelegate = AddressOf APIError
		  Chat.ContentReceivedDelegate = AddressOf ContentReceived
		  Chat.MaxTokensReachedDelegate = AddressOf MaxTokensReached
		  Chat.MessageStartedDelegate = AddressOf MessageStarted
		  Chat.MessageFinishedDelegate = AddressOf MessageFinished
		  Chat.ThinkingReceivedDelegate = AddressOf ThinkingReceived
		  
		  CheckBoxNoMaxTokenLimit.Enabled = Chat.SupportsUnlimitedTokens
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 5468696E6B696E6720636F6E74656E74206973206265696E672072656365697665642E
		Protected Sub ThinkingReceived(sender As AIKit.Chat, content As String)
		  /// Thinking content is being received.
		  
		  #Pragma Unused sender
		  
		  Output.Text = Output.Text + content
		  
		  // Scroll the textarea.
		  Var lastLine As Integer = Output.LineNumber(Output.Text.Length)
		  
		  Output.VerticalScrollPosition = lastLine
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5570646174657320746865206D6F64656C7320706F70757020776974682074686520617661696C61626C65206D6F64656C7320666F7220746865207370656369666965642070726F76696465722E
		Sub UpdateModelsPopup(provider As AIKit.Providers)
		  /// Updates the models popup with the available models for the specified provider.
		  
		  PopupModel.RemoveAllRows
		  
		  Var apiKey, endpoint As String = ""
		  
		  Select Case provider
		  Case AIKit.Providers.Anthropic
		    apiKey = Keys.AnthropicAPIKey
		    
		  Case AIKit.Providers.Ollama
		    endpoint = Keys.OllamaEndpoint
		    
		  Else
		    Raise New InvalidArgumentException("Unsupported provider.")
		  End Select
		  
		  For Each model As AIKit.ModelDescription In AIKit.ModelsForProvider(provider, apiKey, endpoint)
		    PopupModel.AddRow(model.ID)
		  Next model
		  
		  // Select the first model.
		  If PopupModel.RowCount > 0 Then
		    PopupModel.SelectedRowIndex = 0
		  End If
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If PopupProvider.SelectedRowIndex = -1 Then Return ""
			  
			  Select Case PopupProvider.RowTagAt(PopupProvider.SelectedRowIndex)
			  Case AIKit.Providers.Anthropic
			    Return Keys.AnthropicAPIKey
			  Case AIKit.Providers.Ollama
			    Return ""
			  Else
			    Raise New UnsupportedOperationException("Unsupported provider.")
			  End Select
			End Get
		#tag EndGetter
		APIKey As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0, Description = 547275652069662077652772652077616974696E6720666F72206120726573706F6E73652066726F6D20746865206D6F64656C20746F20636F6D706C6574652E
		AwaitingResponse As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Chat As AIKit.Chat
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If PopupProvider.SelectedRowIndex = -1 Then Return ""
			  
			  Select Case PopupProvider.RowTagAt(PopupProvider.SelectedRowIndex)
			  Case AIKit.Providers.Anthropic
			    Return ""
			  Case AIKit.Providers.Ollama
			    Return Keys.OllamaEndpoint
			  Else
			    Raise New UnsupportedOperationException("Unsupported provider.")
			  End Select
			  
			End Get
		#tag EndGetter
		Endpoint As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Keys As DemoKeys
	#tag EndProperty


#tag EndWindowCode

#tag Events PopupProvider
	#tag Event
		Sub Opening()
		  Me.AddRow("Anthropic")
		  Me.RowTagAt(Me.LastAddedRowIndex) = AIKit.Providers.Anthropic
		  Me.AddRow("Ollama")
		  Me.RowTagAt(Me.LastAddedRowIndex) = AIKit.Providers.Ollama
		  
		  // Select Anthropic to start with.
		  Me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  #Pragma Unused item
		  
		  If Me.SelectedRowIndex = -1 Then Return
		  If Keys = Nil Then Return
		  
		  // Update the models popup.
		  UpdateModelsPopup(Me.RowTagAt(Me.SelectedRowIndex))
		  
		  Chat.WithModel(PopupModel.SelectedRowText, _
		  PopupProvider.RowTagAt(PopupProvider.SelectedRowIndex), APIKey, Endpoint)
		  
		  CheckBoxNoMaxTokenLimit.Enabled = Chat.SupportsUnlimitedTokens
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupModel
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  #Pragma Unused item
		  
		  If Chat = Nil Then Return
		  
		  Chat.WithModel(Me.SelectedRowText, PopupProvider.RowTagAt(PopupProvider.SelectedRowIndex), _
		  APIKey, Endpoint)
		  
		  CheckBoxNoMaxTokenLimit.Enabled = Chat.SupportsUnlimitedTokens
		  
		  // Update the indicator that informs the user if the model supports images or not.
		  Var dotColor, dotBordeColor As Color
		  If Chat.SupportsImages Then
		    DotSupportsImages.Caption = "Model supports images"
		    dotColor = &c00FF00
		    dotBordeColor = &c008F00
		    ListBoxImages.Enabled = True
		  Else
		    DotSupportsImages.Caption = "Images not supported"
		    dotColor = &cFF0000
		    dotBordeColor = &cFF0000
		    ListBoxImages.Enabled = False
		  End If
		  
		  DotSupportsImages.DotColor = dotColor
		  DotSupportsImages.DotBorderColor = dotBordeColor
		  DotSupportsImages.Refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBoxImages
	#tag Event
		Sub DropObject(obj As DragItem, action As DragItem.Types)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label1
	#tag Event
		Sub Opening()
		  Me.TextColor = Color.DisabledTextColor
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Prompt
	#tag Event
		Sub TextChanged()
		  If Me.Text.Length > 0 And Not AwaitingResponse Then
		    ButtonSend.Enabled = True
		  Else
		    ButtonSend.Enabled = False
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonSend
	#tag Event
		Sub Pressed()
		  If Chat = Nil Then Return
		  
		  If Output.Text.Length > 0 And Output.Text.Right(1) <> EndOfLine Then
		    Output.Text = Output.Text + EndOfLine + EndOfLine
		  End If
		  
		  Output.Text = Output.Text + "User:" + EndOfLine + Prompt.Text + EndOfLine + EndOfLine
		  
		  ButtonStop.Enabled = True
		  
		  Chat.MaxTokens = MaxTokens.Text.ToInteger
		  Chat.UnlimitedResponse = CheckBoxNoMaxTokenLimit.Value
		  Chat.MaxThinkingBudget = ThinkingBudget.Text.ToInteger
		  Chat.ShouldThink = CheckBoxAllowThinking.Value
		  Chat.SystemPrompt = SystemPrompt.Text
		  
		  Chat.Ask(Prompt.Text)
		  AwaitingResponse = True
		  
		  Prompt.Text = ""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonStop
	#tag Event
		Sub Pressed()
		  If Chat <> Nil Then
		    Chat.Stop
		    ButtonSend.Enabled = True
		    Me.Enabled = False
		    AwaitingResponse = False
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonClearConversation
	#tag Event
		Sub Pressed()
		  ClearConversation
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonKeysAndEndpoints
	#tag Event
		Sub Pressed()
		  // Show the API keys & endpoints popover, passing in the known keys and endpoints.
		  
		  Var popover As New WinAPIKeys(Self.Keys)
		  popover.ShowPopover(Me)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBoxNoMaxTokenLimit
	#tag Event
		Sub ValueChanged()
		  Chat.UnlimitedResponse = Me.Value
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
