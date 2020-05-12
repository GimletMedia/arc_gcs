defmodule Arc.Storage.GCS.Token.DefaultFetcher do
  @behaviourArc.Storage.GCS.Token.Fetcher

  @implArc.Storage.GCS.Token.Fetcher
  def get_token(scopes) when is_list(scopes), do: get_token(Enum.join(scopes, " "))

  def get_token(scope) when is_binary(scope) do
    {:ok, token} = Token.for_scope(scope)
    token.token
  end
end
