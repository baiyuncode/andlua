ymlb={
  {
    RelativeLayout;
    backgroundColor=AndLuaB;
    layout_width="match_parent";
    layout_height="108dp";
    {
      CardView;
      layout_margin="3dp";
      layout_height="match_parent";
      layout_width="match_parent";
      elevation="0dp";
      backgroundColor=AndLuaB1;
      radius=AndLuaR;
      {
        RelativeLayout;
        layout_width="match_parent";
        layout_height="match_parent";
        {
          TextView;
          textColor=TitleColor;
          textSize="15sp";
          id="shsh";
          layout_marginTop="8dp";
          text=getLS("L_Guess_you_like");
          layout_marginLeft="10dp";
        };
        {
          TextView;
          layout_width="0dp";
          id="hhwwp";
          text="0";
          layout_height="0dp";
        };
        {
          LinearLayout;
          layout_below="shsh";
          layout_height="match_parent";
          layout_width="match_parent";
          layout_marginTop="8dp";
          orientation="horizontal";
          {
            LinearLayout;
            layout_weight="1";
            layout_width="fill";
            backgroundColor=AndLuaB1;
            id="CTT1";
            layout_height="fill";
            {
              RelativeLayout;
              layout_width="match_parent";
              layout_height="-1";
              {
                CircleImageView;
                layout_centerHorizontal="true";
                id="cnicon1";
                layout_height="40dp";
                layout_width="40dp";
                src="icon.png";
              };
              {
                TextView;
                textColor=TitleColor;
                textSize="13sp";
                singleLine="true";
                layout_width="match_parent";
                text="标题";
                layout_below="cnicon1";
                id="cntext1";
                ellipsize="end";
                gravity="center";
                layout_marginBottom="6dp";
              };
            };
          };
          {
            LinearLayout;
            layout_weight="1";
            layout_height="fill";
            layout_width="fill";
            backgroundColor=AndLuaB1;
            orientation="vertical";
            id="CTT2";
            {
              RelativeLayout;
              layout_width="match_parent";
              layout_height="-1";
              {
                CircleImageView;
                layout_centerHorizontal="true";
                id="cnicon2";
                layout_height="40dp";
                layout_width="40dp";
                src="icon.png";
              };
              {
                TextView;
                textColor=TitleColor;
                textSize="13sp";
                singleLine="true";
                layout_width="match_parent";
                text="标题";
                layout_below="cnicon2";
                id="cntext2";
                ellipsize="end";
                gravity="center";
                layout_marginBottom="6dp";
              };
            };
          };
          {
            LinearLayout;
            layout_weight="1";
            layout_height="fill";
            layout_width="fill";
            backgroundColor=AndLuaB1;
            id="CTT3";
            orientation="vertical";
            {
              RelativeLayout;
              layout_width="match_parent";
              layout_height="-1";
              {
                CircleImageView;
                layout_centerHorizontal="true";
                id="cnicon3";
                layout_height="40dp";
                layout_width="40dp";
                src="icon.png";
              };
              {
                TextView;
                textColor=TitleColor;
                textSize="13sp";
                singleLine="true";
                layout_width="match_parent";
                text="标题";
                layout_below="cnicon3";
                id="cntext3";
                ellipsize="end";
                gravity="center";
                layout_marginBottom="6dp";
              };
            };
          };
          {
            LinearLayout;
            layout_weight="1";
            layout_height="fill";
            layout_width="fill";
            id="CTT4";
            backgroundColor=AndLuaB1;
            orientation="vertical";
            {
              RelativeLayout;
              layout_width="match_parent";
              layout_height="-1";
              {
                CircleImageView;
                layout_centerHorizontal="true";
                id="cnicon4";
                layout_height="40dp";
                layout_width="40dp";
                src="icon.png";
              };
              {
                TextView;
                textColor=TitleColor;
                textSize="13sp";
                singleLine="true";
                layout_width="match_parent";
                text="标题";
                layout_below="cnicon4";
                id="cntext4";
                ellipsize="end";
                gravity="center";
                layout_marginBottom="6dp";
              };
            };
          };
        };
      };
    };
  };
  {
    LinearLayout;
    layout_width="fill";
    orientation="vertical";
    layout_height="fill";
    backgroundColor=AndLuaB;
    {
      CardView;
      backgroundColor=AndLuaB1;
      layout_width="-1";
      layout_margin="3dp";
      radius=AndLuaR;
      Elevation="0dp";
      {
        LinearLayout;
        layout_width="-1";
        orientation="horizontal";
        layout_height="-1";
        {
          LinearLayout;
          layout_margin="8dp";
          {
            CircleImageView;
            layout_width="46dp";
            id="ttx";
            src="icon.png";
            layout_height="46dp";
          };
        };
        {
          LinearLayout;
          layout_width="-2";
          orientation="vertical";
          layout_height="-1";
          {
            TextView;
            text="";
            layout_marginLeft="5dp";
            singleLine="true";
            layout_marginTop="12dp";
            id="wb";
            MaxEms=10;
            ellipsize="end";
            textSize="15sp";
            textColor=TitleColor;
          };
          {
            TextView;
            text="0.0M";
            layout_marginTop="2dp";
            id="wb2";
            textSize="12sp";
            textColor=TitleColor1;
            layout_marginLeft="5dp";
          };
          {
            TextView;
            id="id3";
            layout_width="0dp";
          };
          {
            TextView;
            id="id33";
            layout_width="0dp";
          };
          {
            TextView;
            id="kk";
            layout_width="0dp";
          };
          {
            TextView;
            id="ida";
            layout_width="0dp";
            layout_height="0dp";
          };
          {
            TextView;
            layout_width="0dp";
            id="ttxx1";
            layout_height="0dp";
          };
          {
            TextView;
            layout_width="0dp";
            id="hhwwp";
            text="1";
            layout_height="0dp";
          };
        };
        {
          LinearLayout;
          layout_width="-1";
          orientation="vertical";
          gravity="center";
          layout_height="-1";
          {
            CardView;
            layout_marginRight="8dp";
            layout_height="26dp";
            layout_gravity="right";
            Elevation="0dp";
            id="ff";
            backgroundColor=tonumber(bjzt());
            {
              TextView;
              gravity="center";
              id="txx";
              layout_marginRight="8dp";
              layout_marginLeft="8dp";
              layout_width="-1";
              textSize="11sp";
              textColor=TitleColor3;
              text="免费下载";
              layout_height="-1";
            };
          };
        };
      };
    };
  };
};

lap={
  LinearLayout;
  backgroundColor=AndLuaB;
  layout_height="fill";
  layout_width="fill";
  {
    CardView;
    elevation="0dp";
    layout_margin="3dp";
    radius=AndLuaR;
    backgroundColor=AndLuaB1;
    layout_width="match_parent";
    {
      RelativeLayout;
      layout_height="60dp";
      layout_width="-1";
      id="bbnm";
      {
        ImageView;
        id="tb";
        layout_marginBottom="5dp";
        layout_marginTop="5dp";
        src="icon.png";
        layout_width="50dp";
        layout_height="-1";
        layout_marginLeft="5dp";
      };
      {
        TextView;
        id="bt";
        layout_marginTop="8dp";
        textColor=TitleColor;
        layout_toRightOf="tb";
        layout_marginTop="8dp";
        text="标题";
        textSize="15sp";
        layout_marginLeft="5dp";
        singleLine=true;
        ellipsize="end";
      };
      {
        TextView;
        id="bb";
        layout_below="bt";
        text="1.0";
        layout_toRightOf="tb";
        layout_marginLeft="5dp";
        layout_marginTop="2dp";
        textColor=TitleColor1;
        textSize="13sp";
      };
      {
        TextView;
        id="n";
        layout_width="2dp";
        layout_below="bt";
        text="";
        layout_toRightOf="bb";
        layout_marginLeft="3dp";
        textSize="13sp";
        textColor=TitleColor1;
        layout_marginTop="2dp";
        singleLine=true;
      };
      {
        TextView;
        layout_marginLeft="2dp";
        layout_below="bt";
        layout_marginTop="2dp";
        textSize="13sp";
        layout_toRightOf="n";
        text="";
        textColor=TitleColor1;
        ellipsize="end";
        singleLine=true;
        id="bmb";
      };
      {
        TextView;
        layout_height="0dp";
        layout_width="0dp";
        id="gcv";
      };
      {
        TextView;
        layout_height="0dp";
        layout_width="0dp";
        id="gcwj";
      };
      {
        TextView;
        layout_height="0dp";
        layout_width="0dp";
        id="gcu";
      };
    };
  };
};

tzlb={
  LinearLayout;
  layout_width="fill";
  layout_height="fill";
  backgroundColor=AndLuaB,
  orientation="vertical";
  {
    CardView;
    layout_width="-1";
    layout_marginLeft="5dp";
    layout_marginRight="5dp";
    backgroundColor=AndLuaB1,
    layout_marginTop="5dp";
    radius=AndLuaR;
    layout_marginBottom="5dp";
    elevation="0dp";
    {
      RelativeLayout;
      layout_width="-1";
      {
        RelativeLayout;
        layout_width="-1";
        layout_height="40dp";
        layout_marginTop="10dp";
        id="b";
        {
          CircleImageView;
          layout_width="35dp";
          layout_marginLeft="10dp";
          id="tztx";
          layout_height="35dp";
          src="res/tx.png";
          layout_centerVertical="true";
        };
        {
          TextView;
          id="tznc";
          text="昵称";
          textSize="14sp";
          layout_toRightOf="tztx";
          layout_marginLeft="10dp";
          ellipsize="end";
          layout_marginTop="2dp";
          textColor=TitleColor;
        };
        {
          TextView;
          id="tzrq";
          layout_below="tznc";
          layout_toRightOf="tztx";
          text="2000-1-1";
          ellipsize="end";
          textColor=TitleColor1;
          layout_marginLeft="10dp";
          textSize="12sp";
        };
      };
      {
        RelativeLayout;
        id="bcl";
        layout_width="-1";
        layout_marginTop="10dp";
        layout_below="b";
        {
          TextView;
          gravity="start";
          layout_marginRight="10dp";
          MaxLines="2";
          textColor=TitleColor;
          ellipsize="end";
          layout_marginBottom="5dp";
          layout_marginLeft="10dp";
          layout_width="-1";
          text="";
          id="tzbt";
          textSize="16sp";
        };
        {
          TextView;
          backgroundColor=AndLuaB;
          layout_below="tzbt";
          layout_marginRight="10dp";
          layout_width="-1";
          layout_height="1dp";
          layout_marginLeft="10dp";
          id="jkk";
        };
        {
          TextView;
          layout_width="0dp";
          id="uidd3";
          layout_height="0dp";
        };
        {
          TextView;
          layout_width="0dp";
          id="uidd4";
          layout_height="0dp";
        };
        {
          TextView;
          layout_width="0dp";
          id="tztx1";
          layout_height="0dp";
        };
        {
          TextView;
          id="tznr";
          layout_marginRight="10dp";
          MaxLines="5";
          textColor=TitleColor1;
          layout_width="-1";
          ellipsize="end";
          layout_marginLeft="10dp";
          layout_marginBottom="8dp";
          text="";
          layout_below="tzbt";
          layout_marginTop="3dp";
          textSize="14sp";
        };
      };
      {
        RelativeLayout;
        layout_marginBottom="10dp";
        layout_below="bcl";
        layout_width="-1";
        {
          TextView;
          id="lll";
          layout_alignParentRight="true";
          text="0";
          layout_marginRight="15dp";
          layout_centerVertical="true";
          textColor=TitleColor1;
          textSize="13sp";
        };
        {
          ImageView;
          layout_width="17dp";
          id="gsd";
          colorFilter=TitleColor1;
          layout_marginRight="5dp";
          layout_toLeftOf="lll";
          layout_height="18dp";
          src="res/Metrial210.png";
          layout_centerVertical="true";
        };
        {
          TextView;
          id="hfl";
          text="0";
          layout_marginRight="10dp";
          layout_toLeftOf="gsd";
          layout_centerVertical="true";
          textColor=TitleColor1;
          textSize="13sp";
        };
        {
          ImageView;
          layout_width="15dp";
          colorFilter=TitleColor1;
          layout_marginRight="5dp";
          layout_toLeftOf="hfl";
          layout_height="16dp";
          src="res/Metrial314.png";
          layout_centerVertical="true";
        };
      };
    };
  };
};



--[[tzlb={
    LinearLayout;
    layout_width="fill";
    layout_height="fill";
    backgroundColor="0xFFFFFFFF";
    orientation="vertical";
    {
      CardView;
      layout_width="-1";
      layout_marginLeft="8dp";
      layout_marginRight="8dp";
      layout_marginTop="8dp";
      backgroundColor="0xFFFFFFFF";
      radius="8dp";
      layout_marginBottom="8dp";
      elevation="4dp";
      {
        RelativeLayout;
        layout_width="-1";
        {
          RelativeLayout;
          layout_width="-1";
          layout_height="40dp";
          layout_marginTop="10dp";
          id="b";
          {
            CircleImageView;
            layout_width="45dp";
            layout_marginLeft="10dp";
            id="tztx";
            layout_height="45dp";
            src="res/tx.png";
            layout_centerVertical="true";
          };
          {
            TextView;
            id="tznc";
            text="昵称";
            textSize="14sp";
            layout_toRightOf="tztx";
            layout_marginLeft="10dp";
            ellipsize="end";
            layout_marginTop="2dp";
            textColor="#333333";
          };
          {
            TextView;
            id="tzrq";
            layout_below="tznc";
            layout_toRightOf="tztx";
            text="2000-1-1";
            ellipsize="end";
            layout_marginLeft="10dp";
            textSize="12sp";
          };
        };
        {
          RelativeLayout;
          id="bcl";
          layout_width="-1";
          layout_marginTop="10dp";
          layout_below="b";
          {
            TextView;
            gravity="start";
            layout_marginRight="10dp";
            MaxLines="2";
            textColor="#333333";
            ellipsize="end";
            layout_marginBottom="5dp";
            layout_marginLeft="10dp";
            layout_width="-1";
            text="";
            id="tzbt";
            textSize="16sp";
          };
          {
            TextView;
            background="#eeeeee";
            layout_below="tzbt";
            layout_marginRight="10dp";
            layout_width="-1";
            layout_height="1dp";
            layout_marginLeft="10dp";
            id="jkk";
          };
          {
            TextView;
            layout_width="0dp";
            id="uidd3";
            layout_height="0dp";
          };
          {
            TextView;
            layout_width="0dp";
            id="uidd4";
            layout_height="0dp";
          };
          {
            TextView;
            id="tznr";
            layout_marginRight="10dp";
            MaxLines="5";
            textColor="#777777";
            layout_width="-1";
            ellipsize="end";
            layout_marginLeft="10dp";
            layout_marginBottom="5dp";
            text="";
            layout_below="tzbt";
            layout_marginTop="3dp";
            textSize="14sp";
          };
        };
        {
          RelativeLayout;
          layout_below="bcl";
          id="listsrc";
          layout_marginBottom="8dp";
          layout_width="match_parent";
          {
            RelativeLayout;
            id="tsrc2";
            layout_width="105dp";
            layout_height="105dp";
            layout_centerHorizontal="true";
            layout_marginTop="5dp";
            {
              ImageView;
              id="ttp2";
              layout_width="match_parent";
              layout_height="match_parent";
              src="1.png";
              scaleType="centerCrop";
              layout_centerInParent="true";
            };
          };
          {
            RelativeLayout;
            id="tsrc1";
            layout_width="105dp";
            layout_marginRight="5dp";
            layout_height="105dp";
            layout_toLeftOf="tsrc2";
            layout_marginTop="5dp";
            {
              ImageView;
              id="ttp1";
              layout_width="match_parent";
              layout_height="match_parent";
              src="1.png";
              scaleType="centerCrop";
              layout_centerInParent="true";
            };
          };
          {
            RelativeLayout;
            id="tsrc3";
            layout_width="105dp";
            layout_height="105dp";
            layout_toRightOf="tsrc2";
            layout_marginLeft="5dp";
            layout_marginTop="5dp";
            {
              ImageView;
              id="ttp3";
              layout_width="match_parent";
              layout_height="match_parent";
              src="1.png";
              scaleType="centerCrop";
              layout_centerInParent="true";
            };
            {
              TextView;
              layout_width="25dp";
              layout_alignParentRight="true";
              gravity="center";
              text="3图";
              layout_height="15dp";
              textSize="10sp";
              backgroundColor="0x70000000";
              textColor="0xffffffff";
              layout_alignParentBottom="true";
            };
          };
        };
        {
          RelativeLayout;
          layout_marginBottom="10dp";
          layout_below="listsrc";
          layout_width="-1";
          {
            TextView;
            id="lll";
            layout_alignParentRight="true";
            text="0";
            layout_marginRight="15dp";
            layout_centerVertical="true";
            textColor="#888888";
            textSize="13sp";
          };
          {
            ImageView;
            layout_width="17dp";
            id="gsd";
            colorFilter="#999999";
            layout_marginRight="5dp";
            layout_toLeftOf="lll";
            layout_height="18dp";
            src="res/Metrial210.png";
            layout_centerVertical="true";
          };
          {
            TextView;
            id="hfl";
            text="0";
            layout_marginRight="10dp";
            layout_toLeftOf="gsd";
            layout_centerVertical="true";
            textColor="#888888";
            textSize="13sp";
          };
          {
            ImageView;
            layout_width="15dp";
            colorFilter="#999999";
            layout_marginRight="5dp";
            layout_toLeftOf="hfl";
            layout_height="16dp";
            src="res/Metrial314.png";
            layout_centerVertical="true";
          };
        };
      };
    };
  };]]

yhlb={
  LinearLayout;
  layout_height="fill";
  layout_width="fill";
  backgroundColor=AndLuaB;
  orientation="vertical";
  {
    CardView;
    backgroundColor=AndLuaB1;
    radius=AndLuaR;
    layout_margin="5dp";
    layout_width="-1";
    Elevation="0dp";
    {
      LinearLayout;
      layout_height="-1";
      layout_width="-1";
      orientation="horizontal";
      {
        LinearLayout;
        layout_margin="8dp";
        {
          CircleImageView;
          layout_height="50dp";
          layout_width="50dp";
          src="icon.png";
          id="yhtx";
        };
      };
      {
        LinearLayout;
        layout_height="-1";
        layout_width="-1";
        orientation="vertical";
        {
          TextView;
          layout_marginLeft="5dp";
          textSize="15sp";
          textColor=TitleColor;
          singleLine="true";
          id="yhnc";
          layout_marginTop="10dp";
          text="昵称";
        };
        {
          TextView;
          layout_marginLeft="5dp";
          textSize="12sp";
          id="yhqm";
          layout_marginTop="2dp";
          textColor=TitleColor1,
          singleLine=true;
          text="这个人很懒，啥都没写!";
        };
        {
          TextView;
          layout_width="0dp";
          id="id3";
        };
        {
          TextView;
          layout_width="0dp";
          id="id33";
        };
        {
          TextView;
          layout_width="0dp";
          id="kk";
        };
        {
          TextView;
          layout_height="0dp";
          layout_width="0dp";
          id="ida";
        };
        {
          TextView;
          layout_width="0dp";
          id="tx0";
          layout_height="0dp";
        };
      };
    };
  };
};

