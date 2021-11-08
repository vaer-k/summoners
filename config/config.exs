import Config

config :summoners,
  riot_api_key:
    System.get_env("RIOT_API_KEY") ||
      raise("environment variable RIOT_API_KEY is missing")
