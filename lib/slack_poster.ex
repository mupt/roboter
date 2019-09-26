defmodule Roboter.SlackPoster do
  @slack_outgoing_webhook Application.get_env(:roboter, :outgoing_slack_webhook)

  def post_to_slack do
    HTTPoison.post(@slack_outgoing_webhook, msg())
  end

  def msg do
    Poison.encode!(%{
      text: "Its me, the robot"
    })
  end
end
