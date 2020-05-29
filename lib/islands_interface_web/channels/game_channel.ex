defmodule IslandsInterfaceWeb.GameChannel do
  use IslandsInterfaceWeb, :channel

  alias IslandsEngine.Game

  def channel() do
    quote do
      use Phoenix.Channel

      import IslandsInterface.Gettext
    end
  end

  def join("game:" <> _player, _payload, socket) do
    {:ok, socket}
  end
end
