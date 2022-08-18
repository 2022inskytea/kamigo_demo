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
  
  def draw_dices
    user_id=params.dig(:source_user_id)
    dices=[1,2,3,4,5,6]
    if user_id=="Uc088af0808f722c8d650eb1c30223109"
       dices += [6,6,6,6,6]    
    end
    @message="你丟出的骰子點數是:#{dices.sample}"
  end  

  def fun_slot
   
    part1=[
      "新一代",
      "下世代",
      "前瞻",
      "進階",
      "先進",
      "未來",
      "分布式",
      "混合式",
      "DAG式", 
    ]
    part2=[
      "高匿名",
      "點對點",
      "物聯網",
      "大數據",
      "高吞吐",
      "抗ASIC",
      "共享化",
      "去中心化",
      "智能合約",
      "閃電交易",
      "拜占庭算法",
      "抗量子攻擊", 
    ]
    part3=[
      "生態加密貨幣",
      "平衡加密貨幣",
      "平台加密貨幣",
      "高速加密貨幣",
      "跨鍊加密貨幣",
      "側鍊加密貨幣",
      "商業加密貨幣",
      "即時加密貨幣",
      "供應鏈加密貨幣",
      "區塊鍊加密貨幣",
      "高性能加密貨幣",
    ]
    @message="#{part1.sample}#{part2.sample}#{part3.sample}"
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

