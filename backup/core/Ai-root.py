import random
import wikipedia
import pyttsx3
from Data.Data import responses

# Initialize the text-to-speech engine
engine = pyttsx3.init()

# Define a function to search Wikipedia
def search_wikipedia(query):
    try:
        result = wikipedia.summary(query, sentences=10)
        return result
    except wikipedia.exceptions.DisambiguationError as e:
        # If there are multiple possible results, choose the first one
        return wikipedia.summary(e.options[0], sentences=2)
    except wikipedia.exceptions.PageError:
        return "Sorry, I couldn't find information on that topic."

def text_to_speech(text, speed=140, pitch=450):
    # Set the speech rate (speed) and pitch
    engine.setProperty('rate', speed)  # Speed in words per minute (default is 200)
    engine.setProperty('pitch', pitch)  # Pitch in percentage (0 to 200, default is 50)

    # Use the text-to-speech engine to speak the text
    engine.say(text)
    engine.runAndWait()

def get_response(message):
    """
    Generate a response to the user's message.

    Args:
    - message (str): The message from the user.

    Returns:
    - str: The response to the user's message.
    """
    # Convert the message to lowercase for case-insensitive matching
    message = message.lower()

    # Check if the message is in the responses dictionary
    if message in responses:
        # If the message is found, randomly select and return a response
        response = random.choice(responses[message])
    else:
        # Check if the message is a Wikipedia search query
        if message.startswith("search "):
            query = message[7:]  # Remove "search " from the query
            response = search_wikipedia(query)
        else:
            # If the message is not found, return a default response
            default_responses = [
                "I'm sorry, I don't understand.",
                "I'm not sure what you mean.",
                "Can you please rephrase that?",
                "I'm still learning. Could you ask something else?",
                "I'm sorry, could you provide more context?",
            ]
            response = random.choice(default_responses)

    # Speak the response with adjusted speed and pitch
    text_to_speech(response)

    return response

def chat():
    """
    Implement a simple chat loop.
    """
    print("Welcome to the ASSASSIN chatbot!")
    print("You can perform an open search using: search  ")
    print("Enter 'bye' to exit.")

    while True:
        user_input = input("You: ")
        if user_input.lower() == 'bye':
            print(get_response(user_input))
            break
        else:
            response = get_response(user_input)
            print("ASSASSIN:", response)

if __name__ == "__main__":
    chat()
