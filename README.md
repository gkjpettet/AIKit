# AIKit

`AIKit` is a free, open source, Xojo module for interacting with large language models (LLMs) from a variety of open source and proprietary providers.

## About

LLMs are popular in the tech world as of the time of writing (March 2025) and many programmers are building impressive tools on top of them. `AIKit` provides a way for Xojo programmers to chat (using both text and images) with LLMs from Xojo code both synchronously and asynchronously using a standardised `Chat` object. The `Chat` object abstracts away the API complexities of different providers and even allows switching between providers within the same conversation.

## Usage

Everything needed is contained within the `AIKit` module. There are no external code dependencies - the module is 100% native Xojo code and therefore should work on any platform Xojo supports.

To get started, simply copy the `AIKit` module into your project.

### Basic synchronous usage

You can talk with a LLM synchronously like this:

```xojo
Const API_KEY = "Your Anthropic Key here"
Const MODEL = "claude-3-7-sonnet-20250219"
Var chat As New AIKit.Chat(MODEL, AIKit.Providers.Anthropic, API_KEY, "")
Var response As AIKit.ChatResponse = chat.Ask("What is 1 + 2?")
```

This will either return an `AIKit.ChatResponse` object containing the model's response, token usage, etc or will raise an `AIKit.APIException` if something went wrong.

You can follow up the conversation by just continuing to ask questions:

```xojo
response = chat.Ask("Add 5 to that and give me the answer")
```

You can even switch models and/providers mid-conversation and the conversation history will be preserved:

```xojo
chat.WithModel("o1-mini", AIKit.Providers.OpenAI, OPENAI_API_KEY, "")
response = chat.Ask("Double that value please")
```

Since LLMs can take a while to respond, it is highly recommended that you use `AIKit` asynchronously otherwise your app may hang whilst a response is awaited (unless you use a thread).

### Asynchronous usage

When used asynchronously, the `AIKit.Chat` object will call delegates (also known as callbacks) you provide when certain events occur. Delegates are methods that you "attach" to a `Chat` object. These methods must have a particular signature. You can read more about Xojo delegates in [Xojo's documentation][delegates documentation] but an example is provided below:

```xojo
// Assume this code is in the Opening event of a window and the window has a property called `Chat` of
// type `AIKit.Chat`.

// Create a new chat instance with a local LLM using the Ollama provider.
Const OLLAMA_ENDPOINT = "Your Ollama API endpoint ending with `/`"
Chat = New AIKit.Chat("deepseek-r1:14b", AIKit.Providers.Ollama, "", OLLAMA_ENDPOINT)

// Attach delegates to handle the various events that the chat object will create.
// You don't have to assign a delegate  to all of these. If you don't, you simply 
// won't be notified when an event occurs.

// APIError() is a method that will be called when an API error happens.
Chat.APIErrorDelegate = AddressOf APIError

// ContentReceived() is my method that will be called when new message content is received.
Chat.ContentReceivedDelegate = AddressOf ContentReceived

// MaxTokensReached() is my method that's called when the maximum token limit has been reached.
Chat.MaxTokensReachedDelegate = AddressOf MaxTokensReached

// MessageStarted() is a message called when a new message is beginning.
Chat.MessageStartedDelegate = AddressOf MessageStarted

// MessageFinished() will be called when a message has just been finished.
Chat.MessageFinishedDelegate = AddressOf MessageFinished

// ThinkingReceived() will be called by some models as thinking content is generated.
Chat.ThinkingReceivedDelegate = AddressOf ThinkingReceived

// Once the chat is setup, we just ask away and handle the responses in the above methods
// as they are received:
chat.Ask("Hello")
```

## Provider support

`AIKit` uses the concept of _Providers_. A Provider is a vendor of an LLM. At present, the following providers are supported:

- Anthropic (specifically Claude) via `AnthropicProvider`
- Ollama (for locally hosted LLMs) via `OllamaProvider`
- OpenAI (ChatGPT, o1/o3, etc) via `OpenAIProvider`

I may add support for other providers in the future but I encourage you to add your own and create a pull request via GitHub so we can all benefit. Adding new providers is fairly easy. If you look at the included provider classes (e.g. `AnthropicProvider`) you'll see they all implement the `AIKit.ChatProvider` interface. There are a couple of other spots in the code that would need modifying (mostly in constructors and the `AIKit.Providers` enumeration).

Most people won't need to interact with provider classes directly as they are abstracted away by the `Chat` object.

## Demo application
Included in the repo is the `AIKit` module and a demo application that allows you to chat with any of the supported LLMs. You will need to provide your own API keys and Ollama endpoints for the demo to work correctly (since I don't want to share mine!). To do this, create a folder called `ignore` in the same directory as the AIKit `src` folder. In this folder, create a JSON file called `private.json` with this structure:

```json
{
	"apiKeys" : {
		"anthropic" : "your-key",
		"openai" : "your-key"
	},
	"endPoints" : {
		"ollama" : "the endpoint, e.g http://localhost:11434/api/"
	}
}
```

This will provide the `KeySafe` module in the demo app with access to your API keys. This is not needed when using `AIKit` in your own projects - just to make the demo work.

On macOS, you'll need to add an entry to the plist for any project using `AIKit` to give permission to the app to call any URL. To do this I have bundled an `Info.plist` within the `resources/` folder of the repo. You can either drop this into your project and Xojo will include it in the build app plist or, if you're using Xojo 2025r1 or greater, I've added the required plist keys in the IDE's plist editor. If you don't do this you'll see Xojo network exceptions.

[delegates documentation]:https://documentation.xojo.com/api/data_types/additional_types/delegate.html 