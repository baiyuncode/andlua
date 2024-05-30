function yss(b,y,kp,pd)
  pd=pd
  import "android.graphics.PorterDuff"
  import "android.graphics.PorterDuffColorFilter"
  function CircleButton(view,InsideColor)
    import "android.graphics.drawable.GradientDrawable"
    drawable = GradientDrawable()
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setColor(InsideColor)
    drawable.setCornerRadii({360,360,360,360,360,360,360,360});
    view.setBackgroundDrawable(drawable)
  end
  yuxuan={
    LinearLayout;
    orientation="vertical";
    layout_height="fill";
    layout_width="fill";
    gravity="center",
    {
      CardView,
      layout_height="100dp";
      layout_width="100dp";
      layout_marginTop="20dp";
      id="mmp5",
    };
    {
      EditText,
      text="",
      id="mmp4",
      background="0";
      layout_marginLeft="10dp",
      layout_marginRight="10dp",
      layout_width="match_parent";
      layout_height="50dp";
      gravity="center",
    };
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="50dp";
      layout_width="fill";
      gravity="center",
      {
        TextView,
        text="A",
        layout_width="10%w";
        layout_height="50dp";
        gravity="center",
      };
      {
        SeekBar;
        id="seek_Ap";
        layout_width="65%w";
        layout_height="50dp";
      },
      {
        TextView,
        text="FF",
        id="mmp6",
        layout_width="10%w";
        layout_height="50dp";
        gravity="center",
      };
    },
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="50dp";
      layout_width="fill";
      gravity="center",
      {
        TextView,
        text="R",
        layout_width="10%w";
        layout_height="50dp";
        gravity="center",
      };
      {
        SeekBar;
        id="seek_red";
        layout_width="65%w";
        layout_height="50dp";
      },
      {
        TextView,
        text="00",
        id="mmp1",
        layout_width="10%w";
        layout_height="50dp";
        gravity="center",
      };
    },
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="50dp";
      layout_width="fill";
      gravity="center",
      {
        TextView,
        text="G",
        layout_width="10%w";
        layout_height="50dp";
        gravity="center",
      };
      {
        SeekBar;
        id="seek_green";
        layout_width="65%w";
        layout_height="50dp";
      },
      {
        TextView,
        text="00",
        id="mmp2",
        layout_width="10%w";
        layout_height="50dp";
        gravity="center",
      };
    },
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="50dp";
      layout_width="fill";
      gravity="center",
      {
        TextView,
        text="B",
        layout_width="10%w";
        layout_height="50dp";
        gravity="center",
      };
      {
        SeekBar;
        id="seek_blue";
        layout_width="65%w";
        layout_height="50dp";
      },
      {
        TextView,
        text="00",
        id="mmp3",
        layout_width="10%w";
        layout_height="50dp";
        gravity="center",
      };
    },
  }

  AlertDialog.Builder(this)
  .setTitle(b)
  .setView(loadlayout(yuxuan))
  .setPositiveButton(getLS("L_Determine"),{onClick=kp})
  .setNeutralButton(getLS("L_The_default"),{onClick=function(v)
      if pd=="1" then
        gxlua("BackgroundColor","0xffffffff")
        sxys()
       elseif pd=="2" then
        gxlua("TextColor","0xff333333")
        sxys()
       elseif pd=="3" then
        gxlua("KeywordColor","0xff3f7fb5")
        sxys()
       elseif pd=="4" then
        gxlua("UserwordColor","0xff6e81d9")
        sxys()
       elseif pd=="5" then
        gxlua("BasewordColor","0xff6e81d9")
        sxys()
       elseif pd=="6" then
        gxlua("StringColor",bjzt())
        sxys()
       elseif pd=="7" then
        gxlua("CommentColor","0xffa0a0a0")
        sxys()
       elseif pd=="8" then
        gxlua("PanelBackgroundColor","0xffFFFFFF")
        sxys()
       elseif pd=="9" then
        gxlua("PanelTextColor",bjzt())
        sxys()
       elseif pd=="10" then
        array=activity.getTheme().obtainStyledAttributes({android.R.attr.colorBackground,android.R.attr.textColorPrimary,android.R.attr.colorPrimary,android.R.attr.colorPrimaryDark,android.R.attr.colorAccent,});
        colorBackground=array.getColor(0, 0xFF00FF);
        textColorPrimary=array.getColor(1, 0xFF00FF);
        colorPrimary=array.getColor(2, 0xFF00FF);
        colorPrimaryDark=array.getColor(3, 0xFF00FF);
        colorAccent=array.getColor(4, 0xFF00FF);
        bjzt2 = tostring("0x"..tostring(string.upper(Integer.toHexString(colorPrimary))))
        io.open(activity.getLuaDir().."/res/set205.LY","w"):write(bjzt2):close()
        sxys()
      end
    end})
  .setNegativeButton(getLS("L_Cancel"),nil)
  .show()
  mmp4.setText(y)
  seek_Ap.setMax(255);
  seek_Ap.setProgress(255);
  seek_red.setMax(255);
  seek_red.setProgress(1);
  seek_green.setMax(255);
  seek_green.setProgress(1);
  seek_blue.setMax(255);
  seek_blue.setProgress(1);
  seek_red.ProgressDrawable.setColorFilter(PorterDuffColorFilter(0xFFFF0000,PorterDuff.Mode.SRC_ATOP))
  seek_red.Thumb.setColorFilter(PorterDuffColorFilter(0xFFFF0000,PorterDuff.Mode.SRC_ATOP))
  seek_green.ProgressDrawable.setColorFilter(PorterDuffColorFilter(0xFF00FF00,PorterDuff.Mode.SRC_ATOP))
  seek_green.Thumb.setColorFilter(PorterDuffColorFilter(0xFF00FF00,PorterDuff.Mode.SRC_ATOP))
  seek_blue.ProgressDrawable.setColorFilter(PorterDuffColorFilter(0xFF0000FF,PorterDuff.Mode.SRC_ATOP))
  seek_blue.Thumb.setColorFilter(PorterDuffColorFilter(0xFF0000FF,PorterDuff.Mode.SRC_ATOP))
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(tointeger(y))
  drawable.setCornerRadii({360,360,360,360,360,360,360,360});
  mmp5.setBackgroundDrawable(drawable)
  seek_Ap.setOnSeekBarChangeListener{
    onProgressChanged=function(SeekBar,progress)
      progress=progress+1
      e=Integer.toHexString(progress-1)
      e=string.upper(e)
      if #e==1 then
        e="0"..e
        mmp6.setText(e)
        d=mmp6.getText()..mmp1.getText()..mmp2.getText()..mmp3.getText()
        mmp4.setText("0x"..d)
        ys=int("0x"..d)
        CircleButton(mmp5,ys)
       else
        mmp6.setText(e)
        d=mmp6.getText()..mmp1.getText()..mmp2.getText()..mmp3.getText()
        mmp4.setText("0x"..d)
        ys=int("0x"..d)
        CircleButton(mmp5,ys)
      end
    end
  }

  seek_red.setOnSeekBarChangeListener{
    onStartTrackingTouch=function()
    end,
    onStopTrackingTouch=function()
    end,
    onProgressChanged=function(SeekBar,progress)
      progress=progress+1
      a=Integer.toHexString(progress-1)
      a=string.upper(a)
      if #a==1 then
        a="0"..a
        mmp1.setText(a)
        d=mmp6.getText()..mmp1.getText()..mmp2.getText()..mmp3.getText()
        mmp4.setText("0x"..d)
        ys=int("0x"..d)
        CircleButton(mmp5,ys)
       else
        mmp1.setText(a)
        d=mmp6.getText()..mmp1.getText()..mmp2.getText()..mmp3.getText()
        mmp4.setText("0x"..d)
        ys=int("0x"..d)
        CircleButton(mmp5,ys)
      end
    end
  }
  seek_green.setOnSeekBarChangeListener{
    onStartTrackingTouch=function()
    end,
    onStopTrackingTouch=function()
    end,
    onProgressChanged=function(SeekBar,progress)
      progress=progress+1
      b=Integer.toHexString(progress-1)
      b=string.upper(b)
      if #b==1 then
        b="0"..b
        mmp2.setText(b)
        d=mmp6.getText()..mmp1.getText()..mmp2.getText()..mmp3.getText()
        mmp4.setText("0x"..d)
        ys=int("0x"..d)
        CircleButton(mmp5,ys)
       else
        mmp2.setText(b)
        d=mmp6.getText()..mmp1.getText()..mmp2.getText()..mmp3.getText()
        mmp4.setText("0x"..d)
        ys=int("0x"..d)
        CircleButton(mmp5,ys)
      end
    end
  }
  seek_blue.setOnSeekBarChangeListener{
    onStartTrackingTouch=function()
    end,
    onStopTrackingTouch=function()
    end,
    onProgressChanged=function(SeekBar,progress)
      progress=progress+1
      c=Integer.toHexString(progress-1)
      c=string.upper(c)
      if #c==1 then
        c="0"..c
        mmp3.setText(c)
        d=mmp6.getText()..mmp1.getText()..mmp2.getText()..mmp3.getText()
        mmp4.setText("0x"..d)
        ys=int("0x"..d)
        CircleButton(mmp5,ys)
       else
        mmp3.setText(c)
        d=mmp6.getText()..mmp1.getText()..mmp2.getText()..mmp3.getText()
        mmp4.setText("0x"..d)
        ys=int("0x"..d)
        CircleButton(mmp5,ys)
      end
    end
  }
  ak=string.sub(y,3,4)
  seek_Ap.setProgress(tonumber(ak, 16))

  a2=string.sub(y,5,6)
  seek_red.setProgress(tonumber(a2, 16))

  a3=string.sub(y,7,8)
  seek_green.setProgress(tonumber(a3, 16))

  a4=string.sub(y,9,10)
  seek_blue.setProgress(tonumber(a4, 16))
end

function sj()
  gxlua("BackgroundColor",mmp4.Text)
  sxys()
end
function sj1()
  gxlua("TextColor",mmp4.Text)
  sxys()
end
function sj2()
  gxlua("KeywordColor",mmp4.Text)
  sxys()
end
function sj3()
  gxlua("UserwordColor",mmp4.Text)
  sxys()
end
function sj4()
  gxlua("BasewordColor",mmp4.Text)
  sxys()
end
function sj5()
  gxlua("StringColor",mmp4.Text)
  sxys()
end
function sj6()
  gxlua("CommentColor",mmp4.Text)
  sxys()
end
function sj7()
  gxlua("PanelBackgroundColor",mmp4.Text)
  sxys()
end
function sj8()
  gxlua("PanelTextColor",mmp4.Text)
  sxys()
end
function sj10()
  io.open(activity.getLuaDir().."/res/set205.LY","w"):write(mmp4.Text):close()
  sxys()
end