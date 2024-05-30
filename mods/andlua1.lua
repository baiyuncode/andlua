require "import"
import "android.widget.*"
import "android.view.*"
import "android.graphics.*"
--by熊君
--效果实现：使用LuaDrawable
--注:对文字的显示支持不是很好
Rintro={}
local x,y
--标题文字
local title=""
--详细描述，一项一行
local des={""}
local fRing=0
local fInnerArc=0
local ripple=false
local shouldIntercept=true
local dismiss=false
local h=activity.height
local w=activity.width
local pRing=Paint()
--小圆半径
local rInner=100
--大圆半径
local rOuter=800
--小圆变大的距离
local rInnerDelta=20
--小圆最大半径
local rInnerMax=rInner+rInnerDelta
--涟漪传播距离
local rRippleDistance=70
--圆环颜色
pRing.setColor(0xff03a9f4);
pRing.setAntiAlias(true);
pRing.setStyle(Paint.Style.STROKE);
pRing.setStrokeWidth(4)
local pRipple=Paint()
pRipple.set(pRing)
--涟漪颜色
pRipple.setColor(0xffffffff)
--标题画笔
local pTitle=Paint()
pTitle.set(pRipple)
pTitle.setStyle(Paint.Style.FILL);
pTitle.setTextSize(90)
pTitle.setStrokeWidth(7)
--描述文字画笔
local pDes=Paint()
pDes.set(pTitle)
pDes.setTextSize(60)
pDes.setStrokeWidth(3)
mask=TextView(activity)

function Rintro.addMask()
  activity.Window.DecorView.addView
  (mask,ViewGroup.LayoutParams(-1,-1))

end

function Rintro.clearMask()
  activity.Window.DecorView.removeView
  (mask)
end
local function drawRing(c,p,rInner,rOuter)
  local radius=(rInner+rOuter)/2
  p.setStrokeWidth(rOuter-rInner)
  c.drawArc(x-radius,y-radius,x+radius,y+radius,0,360,true,p)
end

local function drawTitle(c)
  c.drawText(title,x-rOuter+rInner,y-(rOuter*rOuter-x*x)^.5,pTitle)
end

local function drawDes(c)
  local sx=x-rOuter+rInner/2
  local sy=y-(rOuter*rOuter-x*x)^.5
  for i,v in ipairs(des) do
    c.drawText(v,sx,sy+pTitle.textSize*1.5+(i-1)*pDes.textSize*1.2,pDes)
  end
end
local function draw(c,p,d)

  if fRing<=1 then
    drawRing(c,pRing,fRing*rInner,fRing*rOuter)
    fRing=fRing+.1
  end
  if fRing>1 then

    if fInnerArc<=1 then
      drawRing(c,pRing,(fInnerArc*rInnerDelta)+rInner,rOuter)
      fInnerArc=fInnerArc+.02
     else
      drawRing(c,pRing,rInner+rInnerDelta,rOuter)
      fInnerArc=0
      ripple=0
    end
    drawTitle(c)
    drawDes(c)

  end
  if ripple then
    pRipple.setAlpha(0xaa*(1-ripple))
    drawRing(c,pRipple,(fInnerArc*rInnerDelta)+rInner-1,rInner+rInnerDelta+ripple*rRippleDistance)
    ripple=ripple+.04
    if ripple>1 then
      ripple=nil
    end
  end
  d.invalidateSelf()

end
function Rintro.aimAtView(v,t,d)
  rInner=((v.width^2+v.height^2)^.5/2)
  x=v.getX()+v.width/2
  y=v.getY()+v.height/2+50
  title=t
  des=d
  fRing=0

  mask.background=LuaDrawable(draw)

end

function Rintro.aimAtPoint(mx,my,radius,color)
  rInner=radius
  x=mx
  y=my
  mask.background=LuaDrawable(draw)
end

function Rintro.dismiss(mx,my,radius,color)
  --Rintro.clearMask()
  mask.background=nil
end




