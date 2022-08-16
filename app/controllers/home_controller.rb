class HomeController < ApplicationController
  include Kamigo::Clients::LineClient

  def share_bot
  end

  def share_bot_flex
  end

  def send_test_messages
  end

  def member_join
    @profiles = params.dig(:payload, :joined, :members).map{|member| get_profile(member.dig(:userId)) }
  end

  def profile
  end

  def test
    user_id=params.dig(:source_user_id)
    if user_id=="Uc088af0808f722c8d650eb1c30223109"
      @message="你是作者"
    else
      @message="你是客人"
    end
  end

  private

  def get_profile(user_id)
    case params[:source_type]
    when 'group'
      response = client.get_group_member_profile(
        params[:source_group_id],
        user_id
      )
    when 'room'
      response = client.get_room_member_profile(
        params[:source_group_id],
        user_id
      )
    else
      response = client.get_profile(user_id)
    end
    JSON.parse(response.body)
  end
end

