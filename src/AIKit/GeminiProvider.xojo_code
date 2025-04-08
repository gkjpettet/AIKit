#tag Class
Protected Class GeminiProvider
Implements AIKit.ChatProvider
	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C20612071756572792E
		Sub Ask(what As String)
		  /// Asynchronously asks the currently selected model a query.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  AskWithMessage(New AIKit.ChatMessage("user", what))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53796E6368726F6E6F75736C792061736B7320746865206D6F64656C20612071756572792E206074696D656F75746020697320746865206E756D626572206F66207365636F6E647320746F207761697420666F72206120726573706F6E73652E20412076616C7565206F66206030602077696C6C207761697420696E646566696E6974656C792E
		Function Ask(what As String, timeout As Integer = 0) As AIKit.ChatResponse
		  /// Synchronously asks the model a query.
		  /// `timeout` is the number of seconds to wait for a response. 
		  /// A value of `0` will wait indefinitely.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  Return AskWithMessage(New AIKit.ChatMessage("user", what), timeout)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C2068656C70657220666F72206173796E6368726F6E6F75736C792061736B696E6720746865206D6F64656C206120717565727920776974682061207072652D63726561746564206D6573736167652E
		Private Sub AskWithMessage(message As AIKit.ChatMessage)
		  /// Internal helper for asynchronously asking the model a query with a pre-created message.
		  
		  #Pragma BreakOnExceptions False
		  
		  // Add the message to the conversation history.
		  mOwner.AddMessage(message)
		  
		  // Reset stuff.
		  mInputTokenCount = 0
		  mOutputTokenCount = 0
		  mLastResponse.ResizeTo(-1)
		  mIncomingMessageID = ""
		  mIsAwaitingResponse = False
		  mDataBuffer = ""
		  
		  // Reset timing.
		  mMessageTimeStart = DateTime.Now
		  mMessageTimeStop = Nil
		  
		  // Prepare all messages for the API call.
		  Var messages() As Dictionary = PreparedMessages
		  
		  // Configuration object.
		  Var config As New Dictionary
		  
		  // Config: Max tokens.
		  If mOwner.UnlimitedResponse Or mOwner.MaxTokens <= 0 Then
		    config.Value("maxOutputTokens") = MaxTokensForCurrentModel
		  Else
		    config.Value("maxOutputTokens") = mOwner.MaxTokens
		  End If
		  
		  // Config: Temperature.
		  Var tempValue As Double
		  If mOwner.UseDefaultTemperature Then
		    tempValue = 0.7
		  Else
		    tempValue = Clamp(mOwner.Temperature, 0, 2)
		  End If
		  config.Value("temperature") = tempValue
		  
		  // Create the request payload.
		  Var payload As New Dictionary
		  payload.Value("contents") = messages
		  payload.Value("generationConfig") = config
		  
		  If mOwner.SystemPrompt <> "" Then
		    payload.Value("system_instruction") = SystemInstruction
		  End If
		  
		  // Send the request asynchronously to the Gemini API.
		  Try
		    ConfigureNewConnection
		    
		    // Create the JSON payload.
		    Var jsonPayload As String = GenerateJSON(payload)
		    
		    // Set the content of the request.
		    mConnection.SetRequestContent(jsonPayload, "application/json")
		    
		    // Send it.
		    mIsAwaitingResponse = True
		    
		    If mOwner.MessageStartedDelegate <> Nil Then
		      mOwner.MessageStartedDelegate.Invoke(mOwner, "", 0)
		    End If
		    
		    mConnection.Send("POST", StreamMessageEndpoint)
		    
		  Catch e As RuntimeException
		    e.Message = "API request error: " + e.Message
		    Raise e
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C2068656C70657220666F722073796E6368726F6E6F75736C792061736B696E6720746865206D6F64656C206120717565727920776974682061207072652D63726561746564206D6573736167652E
		Private Function AskWithMessage(message As AIKit.ChatMessage, timeout As Integer) As AIKit.ChatResponse
		  /// Internal helper for synchronously asking the model a query with a pre-created message.
		  
		  #Pragma BreakOnExceptions False
		  
		  // Add the message to the conversation history.
		  mOwner.AddMessage(message)
		  
		  // Reset stuff.
		  mInputTokenCount = 0
		  mOutputTokenCount = 0
		  mLastResponse.ResizeTo(-1)
		  mIncomingMessageID = ""
		  mIsAwaitingResponse = False
		  mDataBuffer = ""
		  
		  // Reset timing.
		  mMessageTimeStart = DateTime.Now
		  mMessageTimeStop = Nil
		  
		  // Prepare all messages for the API call.
		  Var messages() As Dictionary = PreparedMessages
		  
		  // Configuration object.
		  Var config As New Dictionary
		  
		  // Config: Max tokens.
		  If mOwner.UnlimitedResponse Or mOwner.MaxTokens <= 0 Then
		    config.Value("maxOutputTokens") = MaxTokensForCurrentModel
		  Else
		    config.Value("maxOutputTokens") = mOwner.MaxTokens
		  End If
		  
		  // Config: Temperature.
		  Var tempValue As Double
		  If mOwner.UseDefaultTemperature Then
		    tempValue = 0.7
		  Else
		    tempValue = Clamp(mOwner.Temperature, 0, 2)
		  End If
		  config.Value("temperature") = tempValue
		  
		  // Create the request payload.
		  Var payload As New Dictionary
		  payload.Value("contents") = messages
		  payload.Value("generationConfig") = config
		  
		  If mOwner.SystemPrompt <> "" Then
		    payload.Value("system_instruction") = SystemInstruction
		  End If
		  
		  // Send the request synchronously to the Gemini API.
		  Try
		    Var connection As New URLConnection
		    
		    // Create the JSON payload.
		    Var jsonPayload As String = GenerateJSON(payload)
		    
		    // Set the content of the request.
		    connection.SetRequestContent(jsonPayload, "application/json")
		    
		    // Send it.
		    mIsAwaitingResponse = True
		    Var responseJSON As String
		    Try
		      responseJSON = connection.SendSync("POST", SynchronousMessageEndpoint, timeout)
		      Return ProcessSynchronousResponse(responseJSON)
		    Catch e As NetworkException
		      If mOwner.APIErrorDelegate <> Nil Then
		        mOwner.APIErrorDelegate.Invoke(mOwner, e.Message)
		      Else
		        Raise New AIKit.APIException(e.Message)
		      End If
		    End Try
		    
		  Catch e As RuntimeException
		    e.Message = "API request error: " + e.Message
		    Raise e
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C206120717565727920616E642070726F7669646573206F6E65206F72206D6F726520696D616765732E
		Function AskWithPicture(what As String, timeout As Integer, ParamArray pics As Picture) As AIKit.ChatResponse
		  /// Synchronously asks the currently selected model a query and provides one or more images.
		  ///
		  /// Part of the `AIKit.ChatProvider` interface.
		  
		  If pics.Count = 0 Then
		    Raise New AIKit.APIException("At least one picture must be supplied to the " + _
		    "`AskWithPicture()` method.")
		  End If
		  
		  Var m As New AIKit.ChatMessage("user", what)
		  
		  For Each p As Picture In pics
		    m.Pictures.Add(p)
		  Next p
		  
		  Return AskWithMessage(m, timeout)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C206120717565727920616E642070726F7669646573206174206C65617374206F6E6520696D6167652E
		Sub AskWithPicture(what As String, ParamArray pics As Picture)
		  /// Asynchronously asks the currently selected model a query and provides at least one image.
		  ///
		  /// Part of the `AIKit.ChatProvider` interface.
		  
		  If pics.Count = 0 Then
		    Raise New AIKit.APIException("At least one picture must be supplied to the " + _
		    "`AskWithPicture()` method.")
		  End If
		  
		  Var m As New AIKit.ChatMessage("user", what)
		  
		  For Each p As Picture In pics
		    m.Pictures.Add(p)
		  Next p
		  
		  AskWithMessage(m)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E73206076616C75656020636C616D706564206265747765656E20606D696E696D756D6020616E6420606D6178696D756D602E
		Protected Function Clamp(value As Double, minimum As Double, maximum As Double) As Double
		  /// Returns `value` clamped between `minimum` and `maximum`.
		  
		  If value < minimum Then Return minimum
		  If value > maximum Then Return maximum
		  Return value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 436F6E666967757265732061206E65772055524C436F6E6E656374696F6E2C20686F6F6B696E67207570206576656E742068616E646C65727320616E642072656D6F76696E67206F6C64206576656E742068616E646C657273206173206E65656465642E
		Private Sub ConfigureNewConnection()
		  /// Configures a new URLConnection, hooking up event handlers and removing old event handlers 
		  /// as needed.
		  
		  // Remove old handlers?
		  If mConnection <> Nil Then
		    RemoveHandler mConnection.ContentReceived, AddressOf ContentReceivedDelegate
		  End If
		  
		  mConnection = New URLConnection
		  
		  AddHandler mConnection.ContentReceived, AddressOf ContentReceivedDelegate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(owner As AIKit.Chat, apiKey As String = "", endpoint As String = "")
		  // Part of the AIKit.ChatProvider interface.
		  
		  #Pragma Unused endpoint
		  
		  mOwner = owner
		  mAPIKey = apiKey
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 48616E646C657320746865206172726976616C206F6620646174612066726F6D20616E206163746976652047656D696E692041504920636F6E6E656374696F6E2E20556E666F7274756E6174656C79207468652047656D696E692041504920646F65736E2774207265616C6C7920737570706F72742073747265616D696E67206F6E2061206368756E6B656420746F6B656E20626173697320736F20726573706F6E7365732077696C6C2061707065617220616C6C206174206F6E63652E
		Private Sub ContentReceivedDelegate(sender As URLConnection, url As String, httpStatus As Integer, content As String)
		  /// Handles the arrival of data from an active Gemini API connection.
		  /// Unfortunately the Gemini API doesn't really support streaming on a chunked token basis
		  /// so responses will appear all at once.
		  
		  #Pragma Unused sender
		  #Pragma Unused url
		  #Pragma Unused httpStatus
		  
		  // If successful, `content` will be an array of candidate objects.
		  // The final candidate will have the usage metadata.
		  
		  #Pragma Warning "TODO: Handle errors better"
		  If httpStatus <> 200 Then
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "An error occurred: " + content)
		    Else
		      Raise New AIKit.APIException("An error occurred: " + content)
		    End If
		  End If
		  
		  Var candidateObjs() As Object
		  Try
		    candidateObjs = ParseJSON(content)
		  Catch e As JSONException
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Invalid / unexpected JSON (" + e.Message + "): " + content)
		    Else
		      Raise New AIKit.APIException("Invalid / unexpected JSON (" + e.Message + "): " + content)
		    End If
		  End Try
		  
		  Var responseText() As String
		  
		  For i As Integer = 0 To candidateObjs.LastIndex
		    Var candidateDict As Dictionary = Dictionary(candidateObjs(i))
		    Var candidatesObjectArray() As Object = candidateDict.Value("candidates")
		    Var candidate As Dictionary = Dictionary(candidatesObjectArray(0))
		    Var contentDict As Dictionary = candidate.Value("content")
		    Var parts() As Object = contentDict.Value("parts")
		    For Each part As Object In parts
		      Var partDict As Dictionary = Dictionary(part)
		      If partDict.HasKey("text") Then
		        responseText.Add(partDict.Value("text"))
		      End If
		    Next part
		    
		    // Does this entry contain the final usage metadata?
		    If i = candidateObjs.LastIndex Then
		      If candidateDict.HasKey("usageMetadata") Then
		        Var usage As Dictionary = Dictionary(candidateDict.Value("usageMetadata"))
		        mInputTokenCount = usage.Lookup("promptTokenCount", 0)
		        mOutputTokenCount = usage.Lookup("totalTokenCount", 0)
		      End If
		    End If
		  Next i
		  
		  Var fullText As String = String.FromArray(responseText, "")
		  
		  If mOwner.ContentReceivedDelegate <> Nil Then
		    mOwner.ContentReceivedDelegate.Invoke(mOwner, fullText)
		  End If
		  
		  mMessageTimeStop = DateTime.Now
		  
		  Var response As New AIKit.ChatResponse(fullText, "", mMessageTimeStart, mMessageTimeStop, _
		  mInputTokenCount, mOutputTokenCount, Nil, Nil)
		  
		  If mOwner.MessageFinishedDelegate <> Nil Then
		    mOwner.MessageFinishedDelegate.Invoke(mOwner, response)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 52657475726E732061206E6577204D6F64656C4465736372697074696F6E2066726F6D207468652064696374696F6E6172792072657475726E6564206279207468652047656D696E6920415049207768656E207175657279696E672074686520606D6F64656C736020656E64706F696E742E
		Private Function DictionaryToModelDescription(d As Dictionary) As GeminiModelDescription
		  /// Returns a new ModelDescription from the dictionary returned by the Gemini API when 
		  /// querying the `models` endpoint.
		  ///
		  /// Structure:
		  ///
		  /// {
		  ///  "models": [
		  ///   {
		  ///     "name": "models/chat-bison-001",
		  ///     "version": "001",
		  ///     "displayName": "PaLM 2 Chat (Legacy)",
		  ///     "description": "A legacy text-only model optimized for chat conversations",
		  ///     "inputTokenLimit": 4096,
		  ///     "outputTokenLimit": 1024,
		  ///     "supportedGenerationMethods": [
		  ///       "generateMessage",
		  ///       "countMessageTokens"
		  ///     ],
		  ///     "temperature": 0.25,
		  ///     "topP": 0.95,
		  ///     "topK": 40
		  ///    }
		  ///   ]
		  /// }
		  ///
		  /// `supportedGenerationMethods` values:
		  ///   - "generateContent"
		  ///   - "generateMessage"
		  ///   - "predict"
		  ///   - "countMessageTokens"
		  ///   - "generateAnswer"
		  ///   - "embedContent"
		  ///   - "countTokens"
		  ///   - "bidiGenerateContent"
		  ///   - "createCachedContent"
		  ///   - "createTunedModel"
		  ///   - "embedText"
		  ///   - "countTextTokens"
		  ///   - "createTunedTextModel"
		  
		  // The ID will be the name to use in the API, less the `models/` prefix.
		  Var id As String = d.Value("name").StringValue.Replace("models/", "")
		  
		  // The name will be the display name.
		  Var name As String = d.Value("displayName")
		  
		  // The Gemini API doesn't specify when a model was created so we'll just default to now.
		  Var created As DateTime = DateTime.Now
		  
		  // The Gemini API tells us a model's supported endpoints within an array.
		  Var featuresArray() As Variant = d.Value("supportedGenerationMethods")
		  Var supportedEndpoints() As String
		  For Each featureVariant As Variant In featuresArray
		    supportedEndpoints.Add(featureVariant.StringValue)
		  Next featureVariant
		  
		  Var desc As New GeminiModelDescription(id, name, created, "", "", 0, 0)
		  
		  desc.Description = d.Lookup("description", "")
		  desc.InputTokenLimit = d.Lookup("inputTokenLimit", 0)
		  desc.OutputTokenLimit = d.Lookup("outputTokenLimit", 0)
		  desc.SupportedEndpoints = supportedEndpoints
		  
		  Return desc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620606B65796020697320612076616C696420476F6F676C652047656D696E6920415049206B6579206F722046616C73652069662069742069736E27742E
		Function IsValidAPIKey(apiKey As String) As Boolean
		  /// Returns True if `key` is a valid Google Gemini API key or False if it isn't.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  Var connection As New URLConnection
		  
		  // Send the request synchronously.
		  Call connection.SendSync("GET", API_ENDPOINT_MODELS_LIST + "?key=" + apiKey, 5)
		  
		  // Check if the response code indicates success (200 OK).
		  Return connection.HTTPStatusCode = 200
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416C776179732072657475726E73205472756520626563617573652074686520726571756972656420656E64706F696E7420666F72207468652047656D696E69204150492069732073746F72656420696E7465726E616C6C792E
		Function IsValidEndpoint(endpoint As String) As Boolean
		  /// Always returns True because the required endpoint for the Gemini API is stored internally.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  #Pragma Unused endpoint
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746869732070726F76696465722068617320616E20617661696C61626C65206D6F64656C206E616D656420606D6F64656C4E616D65602E20606D6F64656C4E616D65602073686F756C6420626520746865206D6F64656C20494420666F72207468652041504920286C6573732074686520606D6F64656C732F602070726566697860292E
		Function IsValidModel(modelName As String) As Boolean
		  /// Returns True if this provider has an available model named `modelName`.
		  /// `modelName` should be the model ID for the API (less the `models/` prefix`).
		  ///
		  /// Part of the `AIKit.ChatProvider` interface.
		  
		  Var models() As ModelDescription = Models
		  
		  For Each model As ModelDescription In models
		    If model.ID = modelName Then Return True
		  Next model
		  
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MaxTokensForCurrentModel() As Integer
		  /// Returns the maximum number of output tokens for the currently selected model.
		  
		  Var genericModels() As ModelDescription = Models
		  For Each generic As AIKit.ModelDescription In genericModels
		    Var gemModel As AIKit.GeminiModelDescription = AIKit.GeminiModelDescription(generic)
		    If mOwner.ModelName = gemModel.ID Then
		      Return gemModel.OutputTokenLimit
		    End If
		  Next generic
		  
		  // Default to returning 8192 tokens.
		  Return 8192
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MessageAsDictionary(m As AIKit.ChatMessage) As Dictionary
		  /// Returns this message as a Dictionary for encoding as JSON.
		  
		  // Gemini uses `model` instead of `assistant` for the LLM's role.
		  Var contents As New Dictionary("role" : If(m.Role = "assistant", "model", m.Role))
		  
		  Var parts() As Dictionary
		  
		  If m.Pictures.Count = 0 Then
		    parts.Add(New Dictionary("text" : m.Content))
		  Else
		    For Each p As Picture In m.Pictures
		      Var inlineData As New Dictionary("mime_type" : "image/jpeg")
		      inlineData.Value("data") = EncodeBase64(p.ToData(Picture.Formats.JPEG, Picture.QualityHigh), 0)
		      Var inlineDataContainer As New Dictionary("inline_data" : inlineData)
		      parts.Add(inlineDataContainer)
		      
		    Next p
		    parts.AddAt(0, New Dictionary("text" : m.Content))
		  End If
		  
		  contents.Value("parts") = parts
		  
		  Return contents
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F6620616C6C20617661696C61626C65206D6F64656C7320666F7220746869732070726F76696465722E204D617920726169736520616E20415049457863657074696F6E2E
		Function Models() As AIKit.ModelDescription()
		  /// Returns an array of all available models for this provider.
		  /// May raise an APIException.
		  ///
		  /// Part of the `AIKit.ChatProvider` interface.
		  
		  Var request As New URLConnection
		  Var models() As GeminiModelDescription
		  
		  // Set headers.
		  request.RequestHeader("Content-Type") = "application/json"
		  
		  // Send the request.
		  Var response As String = request.SendSync("GET", API_ENDPOINT_MODELS_LIST + "?key=" + mAPIKey, 5)
		  
		  // Check if the request was successful.
		  If request.HTTPStatusCode >= 200 And request.HTTPStatusCode < 300 Then
		    // Parse the JSON response.
		    Try
		      Var json As Dictionary = ParseJSON(response)
		      
		      // The API returns a "models" array with model objects.
		      If json.HasKey("models") Then
		        Var modelsArray() As Object = json.Value("models")
		        
		        For Each modelDict As Object In modelsArray
		          Var m As GeminiModelDescription = DictionaryToModelDescription(Dictionary(modelDict))
		          // For now, we only support models that support the `generateContent` API endpoint.
		          If m.SupportedEndpoints.IndexOf("generateContent") <> -1 Then
		            models.Add(m)
		          End If
		        Next modelDict
		        
		        // Sort the array alphabetically by model name.
		        models.Sort(AddressOf SortModelsAlphabetically)
		      End If
		    Catch e As RuntimeException
		      // Handle JSON parsing errors.
		      Raise New AIKit.APIException("Error parsing models response: " + e.Message)
		    End Try
		  Else
		    // Handle HTTP errors.
		    Raise New AIKit.APIException("HTTP Error: " + Str(request.HTTPStatusCode) + " - " + response)
		  End If
		  
		  Return models
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  /// The name of this provider.
		  ///
		  /// Part of the `AIKit.ChatProvider` interface.
		  
		  Return "Google Gemini"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 52657475726E7320616E206172726179206F66207468697320636F6E766572736174696F6E2773206D6573736167657320707265706172656420666F722073656E64696E6720746F20746865204150492E
		Private Function PreparedMessages() As Dictionary()
		  /// Returns an array of this conversation's messages prepared for sending to the API.
		  
		  Var messages() As Dictionary
		  
		  For Each msg As AIKit.ChatMessage In mOwner.Messages
		    messages.Add(MessageAsDictionary(msg))
		  Next msg
		  
		  Return messages
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320746865204A534F4E2072657475726E65642066726F6D207468652047656D696E692041504920666F7220612073796E6368726F6E6F7573206D65737361676520726571756573742E2052657475726E732061206043686174526573706F6E736560206F626A6563742E
		Private Function ProcessSynchronousResponse(responseJSON As String) As AIKit.ChatResponse
		  /// Processes the JSON returned from the Gemini API for a synchronous message request.
		  /// Returns a `ChatResponse` object.
		  ///
		  /// Structure:
		  ///
		  /// {
		  ///   "candidates": [
		  ///     {
		  ///       "content": {
		  ///         "parts": [
		  ///           {
		  ///             "text": "Hello! How can I help you today?\n"
		  ///           }
		  ///         ],
		  ///        "role": "model"
		  ///       },
		  ///       "finishReason": "STOP",
		  ///       "avgLogprobs": -0.0358936607837677
		  ///     }
		  ///   ],
		  ///   "usageMetadata": {
		  ///     "promptTokenCount": 1,
		  ///     "candidatesTokenCount": 10,
		  ///     "totalTokenCount": 11,
		  ///     "promptTokensDetails": [
		  ///       {
		  ///         "modality": "TEXT",
		  ///         "tokenCount": 1
		  ///       }
		  ///     ],
		  ///    "candidatesTokensDetails": [
		  ///      {
		  ///        "modality": "TEXT",
		  ///        "tokenCount": 10
		  ///      }
		  ///    ]
		  ///   },
		  ///   "modelVersion": "gemini-2.0-flash"
		  /// }
		  
		  Var data As Dictionary
		  
		  Try
		    data = ParseJSON(responseJSON)
		  Catch e As JSONException
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Invalid API response JSON: " + e.Message)
		    Else
		      Raise New AIKit.APIException("Invalid API response JSON: " + e.Message)
		    End If
		  End Try
		  
		  If Not data.HasKey("candidates") Then
		    #Pragma Warning "TODO: Handle errors better"
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "An API error occurred: " + responseJSON)
		    Else
		      Raise New AIKit.APIException("An API error occurred: " + responseJSON)
		    End If
		  End If
		  
		  Var candidates() As Object = data.Value("candidates")
		  // I think there's only ever one candidate...
		  If candidates.Count <> 1 Then
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Expected only one candidate from the API: " + _
		      responseJSON)
		    Else
		      Raise New AIKit.APIException("Expected only one candidate from the API: " + _
		      responseJSON)
		    End If
		  End If
		  
		  Var candidate As Dictionary = Dictionary(candidates(0))
		  Var contents As Dictionary = candidate.Value("content")
		  
		  // Assert the response came from the model (who else would it come from??)!
		  If contents.Value("role") <> "model" Then
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Expected only a `model` role from the API: " + _
		      responseJSON)
		    Else
		      Raise New AIKit.APIException("Expected only a `model` role from the API: " + _
		      responseJSON)
		    End If
		  End If
		  
		  // Get the response text.
		  Var parts() As Object = contents.Value("parts")
		  If parts.Count <> 1 Then
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Expected only a single entry in `parts` from " + _
		      "the API: " + responseJSON)
		    Else
		      Raise New AIKit.APIException("Expected only a single entry in `parts` from " + _
		      "the API: " + responseJSON)
		    End If
		  End If
		  Var theText As String = Dictionary(parts(0)).Value("text").StringValue
		  
		  // Process the usage metadata.
		  If Not data.HasKey("usageMetadata") Then
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Expected a `usageMetadata` object: " + responseJSON)
		    Else
		      Raise New AIKit.APIException("Expected a `usageMetadata` object: " + responseJSON)
		    End If
		  End If
		  Var meta As Dictionary = data.Value("usageMetadata")
		  
		  mInputTokenCount = meta.Lookup("promptTokenCount", 0)
		  mOutputTokenCount = meta.Lookup("candidatesTokenCount", 0)
		  
		  mMessageTimeStop = DateTime.Now
		  
		  // Add the model's response to the conversation history.
		  #Pragma Warning "Note that Gemini's assistant role is `model` unlike other LLMs"
		  mOwner.Messages.Add(New AIKit.ChatMessage("model", theText))
		  
		  Return New AIKit.ChatResponse(theText, "", mMessageTimeStart, mMessageTimeStop, mInputTokenCount, _
		  mOutputTokenCount, Nil, Nil)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequiresAPIKey() As Boolean
		  // Part of the `AIKit.ChatProvider` interface.
		  
		  // A valid API key is required to use the Gemini API.
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequiresEndpoint() As Boolean
		  // Part of the `AIKit.ChatProvider` interface.
		  
		  // The user doesn't need to specify an endpoint for the Gemini API.
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 44656C656761746520666F7220736F7274696E6720616E206172726179206F66206D6F64656C732062792074686569722049442028415049206D6F64656C206E616D65292E
		Private Function SortModelsAlphabetically(model1 As AIKit.ModelDescription, model2 As AIKit.ModelDescription) As Integer
		  /// Delegate for sorting an array of models by their ID (API model name).
		  
		  If model1.ID = model2.ID Then Return 0
		  
		  If model1.ID < model2.ID Then Return -1
		  
		  Return 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Stop()
		  /// If a message request is currently being handled, we cancel it.
		  /// Preserves the conversation history.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  If mConnection <> Nil Then
		    mConnection.Disconnect
		  End If
		  
		  mConnection = Nil
		  
		  // Get rid of the message sent so the model doesn't repeat it's last response.
		  If mOwner.Messages.Count > 0 Then
		    Call mOwner.Messages.Pop
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E732074686520656E64706F696E7420666F722073747265616D696E6720746F207468652063757272656E746C792073656C6563746564206D6F64656C2E205468652047656D696E692041504920697320646966666572656E74207468616E2061206C6F74206F66206F74686572204C4C4D204150497320696E20746861742065616368206D6F64656C2068617320697473206F776E20656E64706F696E7420616E64207468697320697320646966666572656E7420646570656E64696E67206F6E20696620776520617265206D616B696E6720612073796E6368726F6E6F7573206F72206173796E6368726F6E6F75732063616C6C2E
		Protected Function StreamMessageEndpoint() As String
		  /// Returns the endpoint for streaming to the currently selected model.
		  /// The Gemini API is different than a lot of other LLM APIs in that each model has its
		  /// own endpoint and this is different depending on if we are making a synchronous or
		  /// asynchronous call.
		  
		  Var url As String = API_ENDPOINT_MODELS_LIST + "/" + mOwner.ModelName
		  url = url + ":streamGenerateContent?key=" + mAPIKey
		  
		  Return url
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54727565206966207468652063757272656E74206D6F64656C20737570706F72747320696E74657270726574696E6720696D616765732E
		Function SupportsImages() As Boolean
		  /// True if the current model supports interpreting images.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  // As far as I can tell, all Gemini models support images as input.
		  // I don't think there is an option in the API however to confirm this.
		  
		  Return mOwner.ModelName.Contains("gemini")
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54727565206966207468652063757272656E74206D6F64656C20737570706F727473206E6F206C696D6974206F6E20746865206E756D626572206F6620746F6B656E732072657475726E656420696E2074686520726573706F6E73652E
		Function SupportsUnlimitedTokens() As Boolean
		  /// True if the current model supports no limit on the number of tokens returned in the response.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  // If a limit is not specified then we set it to the maximum allowed by the model.
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E732074686520656E64706F696E7420666F722073796E6368726F6E6F75736C7920696E746572616374696E672077697468207468652063757272656E746C792073656C6563746564206D6F64656C2E205468652047656D696E692041504920697320646966666572656E74207468616E2061206C6F74206F66206F74686572204C4C4D204150497320696E20746861742065616368206D6F64656C2068617320697473206F776E20656E64706F696E7420616E64207468697320697320646966666572656E7420646570656E64696E67206F6E20696620776520617265206D616B696E6720612073796E6368726F6E6F7573206F72206173796E6368726F6E6F75732063616C6C2E
		Protected Function SynchronousMessageEndpoint() As String
		  /// Returns the endpoint for synchronously interacting with the currently selected model.
		  /// The Gemini API is different than a lot of other LLM APIs in that each model has its
		  /// own endpoint and this is different depending on if we are making a synchronous or
		  /// asynchronous call.
		  
		  Var url As String = API_ENDPOINT_MODELS_LIST + "/" + mOwner.ModelName
		  url = url + ":generateContent?key=" + mAPIKey
		  
		  Return url
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320612064696374696F6E61727920726570726573656E746174696F6E206F66207468652073797374656D2070726F6D707420666F7220757365207769746820746865204150492E20417373756D6573206D4F776E65722E53797374656D50726F6D7074206973206E6F742022222E
		Protected Function SystemInstruction() As Dictionary
		  /// Returns a dictionary representation of the system prompt for use with the API.
		  /// Assumes mOwner.SystemPrompt is not "".
		  ///
		  /// Structure:
		  ///  "system_instruction": {
		  ///   "parts": [
		  ///     {
		  ///       "text": "You are a cat. Your name is Neko."
		  ///     }
		  ///   ]
		  /// }
		  
		  Var si As New Dictionary
		  
		  Var parts() As Dictionary
		  parts.Add(New Dictionary("text" : mOwner.SystemPrompt))
		  
		  si.Value("parts") = parts
		  
		  Return si
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mAPIKey As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mConnection As URLConnection
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 416C6C2C206173207965742C20756E70726F63657373656420646174612074686174206861732061727269766564207669612074686520526563656976696E6750726F677265737365642064656C65676174652E
		Protected mDataBuffer As String
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 54686520756E69717565204944206F662074686520696E636F6D696E67206D6573736167652E2057696C6C20626520656D707479206966207468657265206973206E6F20696E636F6D696E67206D65737361676520696E2070726F67726573732E
		Protected mIncomingMessageID As String
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 546865206E756D626572206F6620696E707574202870726F6D70742920746F6B656E7320666F7220746865206C6173742071756572792E
		Protected mInputTokenCount As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 547275652069662077652772652077616974696E67206F6E207468652041504920746F2066696E697368696E672072657475726E696E67206120726573706F6E73652E
		Protected mIsAwaitingResponse As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 546865206C61737420726573706F6E73652066726F6D20436C617564652E
		Protected mLastResponse() As String
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 5768656E20746865206C617374206D65737361676520626567616E2E2057696C6C206265204E696C206966206E6F206D6573736167696E672068617665206265656E2073656E742E
		Protected mMessageTimeStart As DateTime
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 5768656E20746865206C617374206D6573736167652066696E69736865642E204D6179206265204E696C206966206E6F206D6573736167696E6720686173206F63637572726564206F722069662061206D65737361676520697320696E20666C696768742E
		Protected mMessageTimeStop As DateTime
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 546865206E756D626572206F66206F757470757420746F6B656E7320696E20746865206C61737420726573706F6E73652E
		Protected mOutputTokenCount As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 546865206368617420696E7374616E636520746869732070726F76696465722062656C6F6E677320746F2E
		Protected mOwner As AIKit.Chat
	#tag EndProperty


	#tag Constant, Name = API_ENDPOINT_MODELS_LIST, Type = String, Dynamic = False, Default = \"https://generativelanguage.googleapis.com/v1beta/models", Scope = Protected, Description = 5468652055524C20746F20726574726965766520746865206C697374206F6620617661696C61626C65206D6F64656C732E
	#tag EndConstant


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
