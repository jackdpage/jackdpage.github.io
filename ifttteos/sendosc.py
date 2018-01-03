from pythonosc import udp_client
from sys import argv

print(argv[1])

client = udp_client.SimpleUDPClient("192.168.1.134", 8000)

client.send_message(argv[1], argv[2])

