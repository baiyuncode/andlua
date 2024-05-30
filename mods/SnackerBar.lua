import "mods.andlua"
wj=activity.getLuaDir().."/res/set14.LY"
ha=io.open(wj):read("*a")

if ha=="false" then
  import "android.animation.Animator"
  SnackerBar={shouldDismiss=true}
  import "android.animation.ValueAnimator"
  local w=activity.width
  import "android.view.animation.AccelerateDecelerateInterpolator"
  local layout={
    LinearLayout,
    Gravity="bottom",
    {
      LinearLayout,
      layout_height=-2,
      layout_width=-1,
      Gravity="center",
      BackgroundColor=0xFF2196F3,
      {
        TextView,
        textColor=0xffffffff,
        layout_weight=.8,
        paddingLeft="20dp",
        paddingTop="10dp",
        paddingBottom="10dp",
        layout_width=0,
      },
      {Button,
        layout_height=-2,
        style="?android:attr/buttonBarButtonStyle",
        text="DONE",
        textColor=0xffffffff,
      }
    }
  }
  local function addView(view)
    local mLayoutParams=ViewGroup.LayoutParams
    (-1,-1)
    activity.Window.DecorView.addView(view,mLayoutParams)
  end

  local function removeView(view)
    activity.Window.DecorView.removeView(view)
  end

  function SnackerBar:msg(textMsg)
    self.textView.text=textMsg
    return self
  end

  function SnackerBar:actionText(textAction)
    self.actionView.text=textAction
    return self
  end

  function SnackerBar:action(func)
    self.actionView.onClick=
    function()
      func()
      self:dismiss()
    end
    return self
  end

  function SnackerBar:show()
    tt(self.textView.text)
  end

  function SnackerBar:dismiss()
    local view=self.view
    view.animate().translationY(300)
    .setDuration(400)
    .setListener(Animator.AnimatorListener{
      onAnimationEnd=function()
        removeView(view)
      end
    }).start()
  end

  SnackerBar.__index=SnackerBar
  function SnackerBar.build()
    local mSnackerBar={}
    setmetatable(mSnackerBar,SnackerBar)
    mSnackerBar.view=loadlayout(layout)
    mSnackerBar.bckView=mSnackerBar.view
    .getChildAt(0)
    mSnackerBar.textView=mSnackerBar.bckView
    .getChildAt(0)
    mSnackerBar.actionView=mSnackerBar.bckView
    .getChildAt(1)
    local function animate(v,tx,dura)
      ValueAnimator().ofFloat({v.translationX,tx}).setDuration(dura)
      .addUpdateListener( ValueAnimator.AnimatorUpdateListener
      {
        onAnimationUpdate=function( p1)
          local f=p1.animatedValue
          v.translationX=f
          v.alpha=1-math.abs(v.translationX)/w
        end
      }).addListener(ValueAnimator.AnimatorListener{
        onAnimationEnd=function()
          if math.abs(tx)>=w then
            removeView(mSnackerBar.view)
          end
        end
      }).start()
    end
    local frx,p,v,fx=0,0,0,0
    mSnackerBar.bckView.setOnTouchListener(View.OnTouchListener{
      onTouch=function(view,event)
        if event.Action==event.ACTION_DOWN then
          mSnackerBar.shouldDismiss=false
          frx=event.x
          fx=event.x
         elseif event.Action==event.ACTION_MOVE then
          if math.abs(event.rawX-frx)>=2 then
            v=math.abs((frx-event.rawX)/(os.clock()-p)/1000)
          end
          p=os.clock()
          frx=event.rawX
          view.translationX=frx-fx
          view.alpha=1-math.abs(view.translationX)/w
         elseif event.Action==event.ACTION_UP then
          mSnackerBar.shouldDismiss=true
          local tx=view.translationX
          if tx>=w/5 then
            animate(view,w,(w-tx)/v)
           elseif tx>0 and tx<w/5 then
            animate(view,0,tx/v)
           elseif tx<=-w/5 then
            animate(view,-w,(w+tx)/v)
           else
            animate(view,0,-tx/v)
          end
          fx=0
        end
        return true
      end
    })
    return mSnackerBar
  end

 else
  import "android.animation.Animator"
  SnackerBar={shouldDismiss=true}
  import "android.animation.ValueAnimator"
  local w=activity.width
  import "android.view.animation.AccelerateDecelerateInterpolator"
  local layout={
    LinearLayout,
    Gravity="bottom",
    {
      LinearLayout,
      layout_height=-2,
      layout_width=-1,
      Gravity="center",
      BackgroundColor=tonumber(bjzt()),
      {
        TextView,
        textColor=0xffffffff,
        layout_weight=.8,
        paddingLeft="20dp",
        paddingTop="10dp",
        paddingBottom="10dp",
        layout_width=0,
      },
      {Button,
        layout_height=-2,
        style="?android:attr/buttonBarButtonStyle",
        text="DONE",
        textColor=0xffffffff,
      }
    }
  }
  local function addView(view)
    local mLayoutParams=ViewGroup.LayoutParams
    (-1,-1)
    activity.Window.DecorView.addView(view,mLayoutParams)
  end

  local function removeView(view)
    activity.Window.DecorView.removeView(view)
  end

  function SnackerBar:msg(textMsg)
    self.textView.text=textMsg
    return self
  end

  function SnackerBar:actionText(textAction)
    self.actionView.text=textAction
    return self
  end

  function SnackerBar:action(func)
    self.actionView.onClick=
    function()
      func()
      self:dismiss()
    end
    return self
  end

  function SnackerBar:show()
    local view=self.view
    addView(view)
    view.translationY=300
    view.animate().translationY(0)
    .setInterpolator(AccelerateDecelerateInterpolator())
    .setDuration(400).start()
    indefiniteDismiss(self)
    import "android.content.res.ColorStateList"
    local attrsArray = {android.R.attr.selectableItemBackgroundBorderless}
    local typedArray =activity.obtainStyledAttributes(attrsArray)
    ripple=typedArray.getResourceId(0,0)
    aoos=activity.Resources.getDrawable(ripple)
    aoos.setColor(ColorStateList(int[0].class{int{}},int{0x5FFFFFFF}))
    self.actionView.setBackground(aoos.setColor(ColorStateList(int[0].class{int{}},int{0x5FFFFFFF})))
  end

  function indefiniteDismiss(snackerBar)
    task(2000,function()
      if snackerBar.shouldDismiss==true then
        snackerBar:dismiss()
       else
        indefiniteDismiss(snackerBar)
      end
    end)
  end

  function SnackerBar:dismiss()
    local view=self.view
    view.animate().translationY(300)
    .setDuration(400)
    .setListener(Animator.AnimatorListener{
      onAnimationEnd=function()
        removeView(view)
      end
    }).start()
  end

  SnackerBar.__index=SnackerBar
  function SnackerBar.build()
    local mSnackerBar={}
    setmetatable(mSnackerBar,SnackerBar)
    mSnackerBar.view=loadlayout(layout)
    mSnackerBar.bckView=mSnackerBar.view
    .getChildAt(0)
    mSnackerBar.textView=mSnackerBar.bckView
    .getChildAt(0)
    mSnackerBar.actionView=mSnackerBar.bckView
    .getChildAt(1)
    local function animate(v,tx,dura)
      ValueAnimator().ofFloat({v.translationX,tx}).setDuration(dura)
      .addUpdateListener( ValueAnimator.AnimatorUpdateListener
      {
        onAnimationUpdate=function( p1)
          local f=p1.animatedValue
          v.translationX=f
          v.alpha=1-math.abs(v.translationX)/w
        end
      }).addListener(ValueAnimator.AnimatorListener{
        onAnimationEnd=function()
          if math.abs(tx)>=w then
            removeView(mSnackerBar.view)
          end
        end
      }).start()
    end
    local frx,p,v,fx=0,0,0,0
    mSnackerBar.bckView.setOnTouchListener(View.OnTouchListener{
      onTouch=function(view,event)
        if event.Action==event.ACTION_DOWN then
          mSnackerBar.shouldDismiss=false
          frx=event.x
          fx=event.x
         elseif event.Action==event.ACTION_MOVE then
          if math.abs(event.rawX-frx)>=2 then
            v=math.abs((frx-event.rawX)/(os.clock()-p)/1000)
          end
          p=os.clock()
          frx=event.rawX
          view.translationX=frx-fx
          view.alpha=1-math.abs(view.translationX)/w
         elseif event.Action==event.ACTION_UP then
          mSnackerBar.shouldDismiss=true
          local tx=view.translationX
          if tx>=w/5 then
            animate(view,w,(w-tx)/v)
           elseif tx>0 and tx<w/5 then
            animate(view,0,tx/v)
           elseif tx<=-w/5 then
            animate(view,-w,(w+tx)/v)
           else
            animate(view,0,-tx/v)
          end
          fx=0
        end
        return true
      end
    })
    return mSnackerBar
  end
end