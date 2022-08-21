class VideosController < ApplicationController
    def index
      @videos=[
        {
          "頻道":"文森說書",
          "網址":"https://www.youtube.com/channel/UCPgGtH2PxZ9xR0ehzQ27FHw/playlists",
          "圖片":"https://yt3.ggpht.com/ytc/AMLnZu8lGJ61Ix-NlyO7BId_f6ejpNo6w7HuyGeBu2RD=s88-c-k-c0x00ffffff-no-rj",  
        },
        {
          "頻道":"鄧惠文-心事有人知",
          "網址":"https://www.youtube.com/channel/UCg-uYPAKjUjrvD-qnTY45tA",
          "圖片":"https://yt3.ggpht.com/LcawldJbzeRolqtGqGtfuVcXqk8ImuFEbCNNLWl8C9tGzaH_M4gnaKa7fZX2466qaeJYAL_t=s88-c-k-c0x00ffffff-no-rj",  
        },
        {
          "頻道":"靜挹古香",
          "網址":"https://www.youtube.com/channel/UCPnp13ZZ50ynR-fuZcaGh_A",
          "圖片":"https://yt3.ggpht.com/ytc/AMLnZu9sidptsOIjJbDxUR_amZ4Gd-YaSC51J9ydl6fg=s88-c-k-c0x00ffffff-no-rj",  
        },
        {
          "頻道":"PanSci 泛科學",
          "網址":"https://www.youtube.com/c/PanScitw",
          "圖片":"https://yt3.ggpht.com/gFvVs22CqiCvk88u12j4E0rjRn48itY87hEiMR_czWlzvngO2AgOqlVxBU_9WAowTCpBZug-nA8=s88-c-k-c0x00ffffff-no-rj",  
        },
        {
          "頻道":"Sherry's Notes 雪力的心理學筆記",
          "網址":"https://www.youtube.com/channel/UCk92SZjdTkLo6uNj-MRJxWA",
          "圖片":"https://yt3.ggpht.com/cp0_ikKCufB26VrqYVACHV6pULzz8fCAYAr_EyxvKP5ywfXnUWGNReZr8-2DIzCT71UGgnST=s88-c-k-c0x00ffffff-no-rj",  
        },
        {
          "頻道":"趨勢教育基金會TRENDFD",
          "網址":"https://www.youtube.com/c/%E8%B6%A8%E5%8B%A2%E6%95%99%E8%82%B2%E5%9F%BA%E9%87%91%E6%9C%83TRENDFD",
          "圖片":"https://yt3.ggpht.com/ytc/AMLnZu-No0FoMLk5iI4ZLLzmWT1Op6LzAtoqm7OocoN4LQ=s88-c-k-c0x00ffffff-no-rj",  
        },
        {
          "頻道":"啟點文化",
          "網址":"https://www.youtube.com/c/koobforbooks",
          "圖片":"https://yt3.ggpht.com/ejHf6Hxv5UBfCu-AG6GZJPbQQDg__zXLIBqDvyOApiUK0hEWaEWqfkfzIoVbnL2Sg3QXhj3t=s88-c-k-c0x00ffffff-no-rj",  
        },
        {
          "頻道":"灣聲樂團OneSongOrchestra",
          "網址":"https://www.youtube.com/c/%E7%81%A3%E8%81%B2%E6%A8%82%E5%9C%98OneSongOrchestra",
          "圖片":"https://yt3.ggpht.com/IwhZGqQsaSDWFkiftBNWkETfK1pXdlDrhbUScIo0VtVdcXTBsa-DAfMTbh1aEgKWAnE_HSgpHw=s88-c-k-c0x00ffffff-no-rj",  
        },
        {
          "頻道":"VOGUE Taiwan",
          "網址":"https://www.youtube.com/c/voguetvtaiwan",
          "圖片":"https://yt3.ggpht.com/F8ONCpLz9FbCUfAYevKBW_CV9K12SFbCe-ff7C2BjZ9n773_yG7thS5rxFnqaLsKDNii2TCuUg=s88-c-k-c0x00ffffff-no-rj",  
        },
      ]

      @keyword = params[:keyword]
      
      if @keyword.present?
        @videos.filter! do |video|
         video[:頻道].include? @keyword
        end
      end 
      @videos = @videos.first(12)
      #if @keyword.present?
      #      filtered_videos=[]
      #     @videos.each do |video| 
      #         if video[:頻道].include? @keyword
      #            filtered_videos << video
      #        end 
      #   end
      #    @videos = filtered_videos       
      #end
     
    end
  end