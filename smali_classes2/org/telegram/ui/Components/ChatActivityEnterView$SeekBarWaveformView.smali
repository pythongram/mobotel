.class Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarWaveformView"
.end annotation


# instance fields
.field private seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 141
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v0, Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/SeekBarWaveform;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 152
    return-void
.end method


# virtual methods
.method public isDragging()Z
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarWaveform;->isDragging()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    const-string v1, "chat_recordedVoiceProgress"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "chat_recordedVoiceProgressInner"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "chat_recordedVoiceProgress"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SeekBarWaveform;->setColors(III)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->draw(Landroid/graphics/Canvas;)V

    .line 191
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 182
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SeekBarWaveform;->setSize(II)V

    .line 184
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 170
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBarWaveform;->onTouch(IFF)Z

    move-result v0

    .line 171
    .local v0, "result":Z
    if-eqz v0, :cond_23

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_20

    .line 173
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 175
    :cond_20
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->invalidate()V

    .line 177
    :cond_23
    if-nez v0, :cond_2b

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2b
    :goto_2b
    return v1

    :cond_2c
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method public setProgress(F)V
    .registers 3
    .param p1, "progress"    # F

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setProgress(F)V

    .line 161
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->invalidate()V

    .line 162
    return-void
.end method

.method public setWaveform([B)V
    .registers 3
    .param p1, "waveform"    # [B

    .prologue
    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setWaveform([B)V

    .line 156
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->invalidate()V

    .line 157
    return-void
.end method
